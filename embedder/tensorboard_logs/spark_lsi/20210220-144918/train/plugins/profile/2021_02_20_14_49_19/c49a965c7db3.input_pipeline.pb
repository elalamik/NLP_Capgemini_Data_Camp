	?'???&@@?'???&@@!?'???&@@	????7???????7???!????7???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?'???&@@?AC?'<@1?`TR'???Aɑ???ˢ?I?e6|
@Y?dV?p;??*	̡E???e@2U
Iterator::Model::ParallelMapV2?P?R??!?F[d?vC@)?P?R??1?F[d?vC@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate+O ????!i?;?x9@)NG 7???1???)t5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat"?uq??!v??m	2@)????L0??1???K ?/@:Preprocessing2F
Iterator::Model?71$'??!f!???I@)???y??1?R?h?)@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?> ?M?|?!S?Ƚ.@)?> ?M?|?1S?Ƚ.@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip$(~??k??!???yH@)?????u?1??zJ?i@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?+?POo?!?o?m?@)?+?POo?1?o?m?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?Os?"??!=?[?;@)?0e??f?17??a?I??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 87.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?10.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????7???Io~?'aX@Q?????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?AC?'<@?AC?'<@!?AC?'<@      ??!       "	?`TR'????`TR'???!?`TR'???*      ??!       2	ɑ???ˢ?ɑ???ˢ?!ɑ???ˢ?:	?e6|
@?e6|
@!?e6|
@B      ??!       J	?dV?p;???dV?p;??!?dV?p;??R      ??!       Z	?dV?p;???dV?p;??!?dV?p;??b      ??!       JGPUY????7???b qo~?'aX@y?????@