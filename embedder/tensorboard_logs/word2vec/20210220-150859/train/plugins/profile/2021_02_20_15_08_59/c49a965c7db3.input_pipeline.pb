	?^?????@?^?????@!?^?????@	?K?z?????K?z????!?K?z????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?^?????@?D??<@1???߆???A?4c?tv??I? ?m޸??Y?Ø??R??*	????MrZ@2U
Iterator::Model::ParallelMapV2x?W?f,??!?Z???@@)x?W?f,??1?Z???@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat3????!J?/J?8@)??N?0???1?֩?0?3@:Preprocessing2F
Iterator::ModelT?^P??!?h?haJH@)2k?MG??1>6??.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??%?2???!-??_??!@)??%?2???1-??_??!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?~2Ƈ٫?!s?I???I@)o+?6+??1_?B??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????&???!?cY?Z?.@),(?4?|?1??|g@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?:??Kt?!?ռxf?@)?:??Kt?1?ռxf?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapƢ??dp??!???G?2@)`???Yn?1%???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?K?z????I[KiyX@Q?t???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?D??<@?D??<@!?D??<@      ??!       "	???߆??????߆???!???߆???*      ??!       2	?4c?tv???4c?tv??!?4c?tv??:	? ?m޸??? ?m޸??!? ?m޸??B      ??!       J	?Ø??R???Ø??R??!?Ø??R??R      ??!       Z	?Ø??R???Ø??R??!?Ø??R??b      ??!       JGPUY?K?z????b q[KiyX@y?t???@