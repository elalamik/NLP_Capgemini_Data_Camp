	??1 YC@??1 YC@!??1 YC@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??1 YC@?Ü?'A@1*8? "???A?G??[??I??t?@*	Zd;?Oia@2U
Iterator::Model::ParallelMapV2/ܹ0ҋ??!Q?EXYJ@)/ܹ0ҋ??1Q?EXYJ@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?&??d???!??ѻJ0@)Y4?????1Ē0y*@:Preprocessing2F
Iterator::ModelB???8a??!?;?uaO@)??z6???1???r?%@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatei????+??!!?C?-@)U?z?I??1??+S?#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????G|?!bLx??@)????G|?1bLx??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipt{Ic????!oĀ??B@)?`?HZv?1??qW@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoruʣaQq?!??DqH@)uʣaQq?1??DqH@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????~???!?M?F1@)?:9Cq?k?1??N?y@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 88.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?9.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIt????uX@Q??,?IA@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Ü?'A@?Ü?'A@!?Ü?'A@      ??!       "	*8? "???*8? "???!*8? "???*      ??!       2	?G??[???G??[??!?G??[??:	??t?@??t?@!??t?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qt????uX@y??,?IA@