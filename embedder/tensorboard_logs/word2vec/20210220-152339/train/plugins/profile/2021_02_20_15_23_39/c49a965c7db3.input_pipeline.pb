	?!9???B@?!9???B@!?!9???B@	1PĴR???1PĴR???!1PĴR???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?!9???B@??8?dmA@1?֍w???A???ګ??I??- ?^??Yh?RD?U??*	?(\??]V@2U
Iterator::Model::ParallelMapV2鷯???!?&?Xt??@)鷯???1?&?Xt??@:Preprocessing2F
Iterator::Model??6?^??!?,???K@)?P??֕?1`2S???7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??=?4??!?d??2@)? ?w?~??1?:???/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateJ?%r???!p?g?.@)쉮?8?1v?F3 
!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??^zo??!v??vNF@)??i?{?1??x?qi@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????C?x?!???D@)????C?x?1???D@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????g?!?,?d?	@)?????g?1?,?d?	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??Z???!??f?u:2@)?ΡU1e?1????"@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no91PĴR???I*c?>?\X@Q????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??8?dmA@??8?dmA@!??8?dmA@      ??!       "	?֍w????֍w???!?֍w???*      ??!       2	???ګ?????ګ??!???ګ??:	??- ?^????- ?^??!??- ?^??B      ??!       J	h?RD?U??h?RD?U??!h?RD?U??R      ??!       Z	h?RD?U??h?RD?U??!h?RD?U??b      ??!       JGPUY1PĴR???b q*c?>?\X@y????@