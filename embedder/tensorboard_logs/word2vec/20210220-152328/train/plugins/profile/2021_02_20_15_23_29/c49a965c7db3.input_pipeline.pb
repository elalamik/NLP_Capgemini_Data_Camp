	-?i???B@-?i???B@!-?i???B@	??ޱ\?????ޱ\???!??ޱ\???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6-?i???B@-]?6hA@1
?F???A3?,%?I??I??8?c??Yׄ?Ơ??*	?z?G?V@2U
Iterator::Model::ParallelMapV2?a1?Z{??!b??0?A@)?a1?Z{??1b??0?A@:Preprocessing2F
Iterator::Model??h?x???!??9??L@)Z??????1q4N?Y?7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat+??	h??!??????3@)N?=??j??1謠[?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate:!t?%??!hx0'S,@)???*ø{?11????@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??[v?x?!?Kx??@)??[v?x?1?Kx??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??/????!eb??P*E@)w??o??r?1N3??a@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorl??g?i?!7p_*??@)l??g?i?17p_*??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap31]?Տ?!	??lD1@)I?2??f?1?????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??ޱ\???I??ZaX@Q&?b??T@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	-]?6hA@-]?6hA@!-]?6hA@      ??!       "	
?F???
?F???!
?F???*      ??!       2	3?,%?I??3?,%?I??!3?,%?I??:	??8?c????8?c??!??8?c??B      ??!       J	ׄ?Ơ??ׄ?Ơ??!ׄ?Ơ??R      ??!       Z	ׄ?Ơ??ׄ?Ơ??!ׄ?Ơ??b      ??!       JGPUY??ޱ\???b q??ZaX@y&?b??T@