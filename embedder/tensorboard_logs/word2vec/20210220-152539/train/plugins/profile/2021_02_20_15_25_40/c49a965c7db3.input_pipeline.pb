	?ɨ2??@?ɨ2??@!?ɨ2??@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?ɨ2??@?$>w??<@1? ?bGc??A??Ü???I$?F????*	th??|gU@2U
Iterator::Model::ParallelMapV2??pz??!?Y4\?A@)??pz??1?Y4\?A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat*??Y?N??!??CN8@)??++MJ??1mƷ???3@:Preprocessing2F
Iterator::Model;?G???!? #?yJ@)??E|'f??1??O;?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate&??4??!xV??d/@)34??<|?1?j??? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?? Z+z?!_?S?e?@)?? Z+z?1_?S?e?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip=?බ???!n??#??G@)r???_s?1?+J?1@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?I???p?!?TI?2U@)?I???p?1?TI?2U@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapiUMu??!C????1@)
?\??a?1@h??Hh@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?m?X@Q]????d??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?$>w??<@?$>w??<@!?$>w??<@      ??!       "	? ?bGc??? ?bGc??!? ?bGc??*      ??!       2	??Ü?????Ü???!??Ü???:	$?F????$?F????!$?F????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?m?X@y]????d??