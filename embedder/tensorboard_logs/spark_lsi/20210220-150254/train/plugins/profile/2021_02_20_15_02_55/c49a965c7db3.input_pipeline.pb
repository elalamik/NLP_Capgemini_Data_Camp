	S{m?8B@S{m?8B@!S{m?8B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-S{m?8B@ǹM?W?@@1?'?bdI??A?9??ȥ?I??o??z??*	???S?X@2F
Iterator::Modelt?%z???!?A?k?O@)x?캷"??1??K?s?@@:Preprocessing2U
Iterator::Model::ParallelMapV2??qќ?!}Ķ?d`<@)??qќ?1}Ķ?d`<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatw???s???!~?H?t0@)????c??1h?M{O?*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateH?V
???!U?(X&,@)f?O7P?}?1Q?vS	k@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice*6?u?!{?!X??\C?@)*6?u?!{?1X??\C?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???;??!??X?Y?B@):y?	?5r?1Br?{?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????N$h?!P?=??@)????N$h?1P?=??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap>	l??3??!q??.;?0@)?????g?1/"?@=@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI1w??oX@Q?1?N@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ǹM?W?@@ǹM?W?@@!ǹM?W?@@      ??!       "	?'?bdI???'?bdI??!?'?bdI??*      ??!       2	?9??ȥ??9??ȥ?!?9??ȥ?:	??o??z????o??z??!??o??z??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q1w??oX@y?1?N@