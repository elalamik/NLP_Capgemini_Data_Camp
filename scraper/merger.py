import glob
import json
from logzero import logger
import logzero
import pandas as pd
import os

def offset_ids():

    existing_restaurants = glob.glob("./scraped_data/restaurants/*.json")
    #existing_bulk_restaurants = glob.glob("./scraped_data/bulk_restaurants/*.json") 
    existing_reviews = glob.glob("./scraped_data/reviews/*.json")

    logger.info(f"FINDING RESTAURANTS FILES: {existing_restaurants}")
    output_file_resto = "./scraped_data/restaurants/modified_restaurants_"
    #output_file_bulk_resto = "./scraped_data/restaurants/modified_bulk_restaurants_"
    output_file_review = "./scraped_data/reviews/modified_reviews_"

    resto_offset = 0
    nb_lines_file_resto = 0
    review_offset = 0
    nb_lines_file_review = 0

    couples = zip(existing_restaurants, existing_reviews)

    for idx, couple in enumerate(couples):
        resto_file, review_file = couple
        logger.warn(f"{resto_file} \n {review_file}")
        
        nb_lines_file_resto = 0
        nb_lines_file_review = 0
        modified_file_resto = open(output_file_resto + str(idx + 1) + '.json', "a+")
        modified_file_review = open(output_file_review + str(idx + 1) + '.json', "a+")
        file_resto = open(resto_file, "r+")
        file_review = open(review_file, "r+")
    
        for line in file_resto:
            data = json.loads(line)
            data["restaurant_id"
    ] += resto_offset
            json.dump(data, modified_file_resto)
            modified_file_resto.write("\n")
            nb_lines_file_resto += 1

        for line in file_review:
            data = json.loads(line)
            data["restaurant_id"] += resto_offset
            data["review_id"] += review_offset
            json.dump(data, modified_file_review)
            modified_file_review.write("\n")
            nb_lines_file_review += 1

        review_offset += nb_lines_file_review
        resto_offset += nb_lines_file_resto
        
        modified_file_resto.close()
        modified_file_review.close()
        file_resto.close()
        file_review.close()

def merge_files(list_directory, output_file):
    
    existing_files = []
    if not isinstance(list_directory, list):
        list_directory = [list_directory]

    for directory in list_directory:
        jsons = glob.glob(directory + "/*.json")
        existing_files.extend(jsons)
        logger.info(f"Merging {len(existing_files)} files")
        
    existing_files = sorted(existing_files)
    with open(output_file, "w+") as merged_file:
        for existing_file in existing_files:
            with open(existing_file, "r+") as child_file:
                for line in child_file:
                    merged_file.write(line)

if __name__ == '__main__':

    logger.info(f"In merger.py, pwd returns {os.getcwd()}")
    path_list = os.getcwd().split(os.sep)
    target_index = path_list.index('nlp_consulting_project')
    path_list = path_list[:target_index + 1]
    if os.name=='nt':
        path_list[0] += '/'
    os.chdir(os.path.join(os.sep, *path_list))

    logger.info(f"In merger.py, changing working directory to {os.getcwd()}")

    try:
        os.mkdir("./scraped_data/merged_data")
    except OSError:
        logger.warn("OSError: directory already exists")

    # offset_ids()

    scraped_data_dir = os.path.join(os.getcwd(), 'scraper', 'scraped_data')
    #bulk_scraped_data_dir = os.path.join(os.getcwd(), 'scraper', 'scraper_restaurants', 'scraped_data')
    scraped_rooftops_dir = os.path.join(os.getcwd(), 'scraper', 'scraper_rooftops', 'scraped_data')
    merged_data_dir = os.path.join(os.getcwd(), 'scraper', 'scraped_data', 'merged_data')

    if not os.path.exists(merged_data_dir):
        logger.warn(f"Creating directory {merged_data_dir}")
        os.makedirs(merged_data_dir)

    logger.info("Merging restaurant files")
    merge_files([os.path.join(scraped_data_dir, 'restaurants'), os.path.join(scraped_rooftops_dir, 'restaurants')], os.path.join(merged_data_dir, "merged_restaurants.json"))

    logger.info("Merging reviews files")
    merge_files([os.path.join(scraped_data_dir, 'reviews'), os.path.join(scraped_rooftops_dir, 'reviews')], os.path.join(merged_data_dir, "merged_reviews.json"))

    logger.info("Merging users files")
    merge_files([os.path.join(scraped_data_dir, 'users'), os.path.join(scraped_rooftops_dir, 'users')], os.path.join(merged_data_dir, "merged_users.json"))

    logger.info("Merging bulk restaurant scrapper files")
    merge_files([os.path.join(scraped_data_dir, 'bulk_restaurants'), os.path.join(scraped_rooftops_dir, 'restaurants')], os.path.join(merged_data_dir, "merged_bulk_restaurants.json"))