	?h8e?:@?h8e?:@!?h8e?:@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?h8e?:@+N??8@1?iP4???A??z6???I?o??????*	?/?$VY@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatÃf׽??!??U8?v@@)???G???1?(Ĕ?=@:Preprocessing2U
Iterator::Model::ParallelMapV2?n?e????!?a?7@)?n?e????1?a?7@:Preprocessing2F
Iterator::Model?I?O?c??!6;?]?E@)?$?9ϔ?1???4@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipP?s'???!??G??lL@) ?!p$??1?n??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?{?ԗ?}?!v??zF?@)?{?ԗ?}?1v??zF?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate1?Zd??!???e*@)???d#y?1Dq,?8@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?9??!l?!??dm@)?9??!l?1??dm@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?72?????!<??%0@)???|~h?1{e-1?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIF??1??X@Q?nȇ????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	+N??8@+N??8@!+N??8@      ??!       "	?iP4????iP4???!?iP4???*      ??!       2	??z6?????z6???!??z6???:	?o???????o??????!?o??????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qF??1??X@y?nȇ????