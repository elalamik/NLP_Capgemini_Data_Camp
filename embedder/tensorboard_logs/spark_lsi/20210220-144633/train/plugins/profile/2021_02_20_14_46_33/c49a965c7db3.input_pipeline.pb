	X????YA@X????YA@!X????YA@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-X????YA@???Mb??@1K???ֲ??A?.4?i???I?|??w@*	???Mb?U@2U
Iterator::Model::ParallelMapV25?+-#???!:??2=YA@)5?+-#???1:??2=YA@:Preprocessing2F
Iterator::ModelH???\Q??!+9M@)Z??????1?g???K8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??=Զ??!H?F???3@)??/-꓌?1)S??0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?????	??!?E?c?(@)!yv?v?1	?,???@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??$xCu?!Bi]?ئ@)??$xCu?1Bi]?ئ@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?	MK??!????ƀD@)[&??|t?1OH???q@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?$]3?fk?!?(??^?@)?$]3?fk?1?(??^?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??=Ab???!????/@)???"?f?1??>GX?	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI[???kX@Q??Td??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???Mb??@???Mb??@!???Mb??@      ??!       "	K???ֲ??K???ֲ??!K???ֲ??*      ??!       2	?.4?i????.4?i???!?.4?i???:	?|??w@?|??w@!?|??w@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q[???kX@y??Td??@