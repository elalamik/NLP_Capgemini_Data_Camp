	?<0?VB@?<0?VB@!?<0?VB@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?<0?VB@?jH?cSA@1?l??p???Ax???N̪?I2?g?o???*	??? ??]@2U
Iterator::Model::ParallelMapV2@x?=\??!?tvq?=@)@x?=\??1?tvq?=@:Preprocessing2F
Iterator::ModelM0?k????!?~?L@)ZH??????1ƦƊ?;@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate*Ŏơ~??!??[y13@)J???????16?-R?+@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??^EF??!?????\0@)կt><K??1"y??!?*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?C?R?z?!31͵C@)?C?R?z?131͵C@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???k???!>????1E@)??6?ُt?1? C%?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorf?O7P?m?!/!tbh@)f?O7P?m?1/!tbh@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?6?^????!?W?g?5@)獓¼?i?1???u@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIĉB??X@Q???]o??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?jH?cSA@?jH?cSA@!?jH?cSA@      ??!       "	?l??p????l??p???!?l??p???*      ??!       2	x???N̪?x???N̪?!x???N̪?:	2?g?o???2?g?o???!2?g?o???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qĉB??X@y???]o??