	?v?>X?=@?v?>X?=@!?v?>X?=@	J3??s??J3??s??!J3??s??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?v?>X?=@0*???:@1d??N??A'1?Z??I!!?????Y??@?m߻?*	@5^?I?U@2U
Iterator::Model::ParallelMapV2鹅?D???!R???F?=@)鹅?D???1R???F?=@:Preprocessing2F
Iterator::Model??o?DI??!n??l=K@)?Y,E???1?=9??8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat>???6??!???=`?6@)?????1?????$1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??b?=??!?~xq?O,@)Pqx??y?1!3i??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?????x?!Lʇ[??@)?????x?1Lʇ[??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??Iطs?!,,??@)??Iطs?1,,??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?J???J??!??
/??F@)?????r?1?s?(h?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap&4I,)w??!6?Il?1@)????>?h?1?6j?^?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9J3??s??I?H;?{7X@Q??5"@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	0*???:@0*???:@!0*???:@      ??!       "	d??N??d??N??!d??N??*      ??!       2	'1?Z??'1?Z??!'1?Z??:	!!?????!!?????!!!?????B      ??!       J	??@?m߻???@?m߻?!??@?m߻?R      ??!       Z	??@?m߻???@?m߻?!??@?m߻?b      ??!       JGPUYJ3??s??b q?H;?{7X@y??5"@