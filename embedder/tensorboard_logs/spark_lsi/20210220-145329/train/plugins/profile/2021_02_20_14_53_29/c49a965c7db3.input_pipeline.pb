	?????>@?????>@!?????>@	`5?>???`5?>???!`5?>???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?????>@??#F?8@1֬3?/???A	6??g??Im??o?@Yt??%???*	?~j?tZ@2U
Iterator::Model::ParallelMapV2???M????!???|???@)???M????1???|???@:Preprocessing2F
Iterator::Model??K?[??!D*?#eM@)j?*?ޜ?1??cf;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?????T??!?????3@)??;Fz??1???"b0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice]߇??(?!y??5@)]߇??(?1y??5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?O??͌?!|*mm?*@)???M?qz?1?NLA??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?[??.???!???ܚD@)??0Xru?1"Ϋ??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorZF?=??n?!????{?@)ZF?=??n?1????{?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????E??!???p@00@)B??K8?f?1?l?M?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 80.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?17.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9`5?>???I????SX@Q???a???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??#F?8@??#F?8@!??#F?8@      ??!       "	֬3?/???֬3?/???!֬3?/???*      ??!       2		6??g??	6??g??!	6??g??:	m??o?@m??o?@!m??o?@B      ??!       J	t??%???t??%???!t??%???R      ??!       Z	t??%???t??%???!t??%???b      ??!       JGPUY`5?>???b q????SX@y???a???