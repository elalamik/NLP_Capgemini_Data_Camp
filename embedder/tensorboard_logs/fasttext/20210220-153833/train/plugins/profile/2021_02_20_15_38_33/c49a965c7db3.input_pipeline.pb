	W??,??7@W??,??7@!W??,??7@	F?d<y??F?d<y??!F?d<y??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6W??,??7@?z?ю?5@12=a????A????/???I?_??m??Y??c??3??*	?p=
?[W@2U
Iterator::Model::ParallelMapV2:??KT??!2,??Q_@@):??KT??12,??Q_@@:Preprocessing2F
Iterator::Model??N@a??!???L@)=???m??1P???|8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?N?`????!LwF??4@)?_{fI??1??jv?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate:@0G?ߋ?!_;??!-@)?	MK?}?1l? e?"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?v|??y?!??Uw!@)?v|??y?1??Uw!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??K?u??!&???CbE@)??y??q?1?b?Ɂ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??Q,??j?!\?|??@)??Q,??j?1\?|??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??25	ސ?!`pC?1@)?<֌rg?1n_6?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9F?d<y??I???<?.X@Q$:L??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?z?ю?5@?z?ю?5@!?z?ю?5@      ??!       "	2=a????2=a????!2=a????*      ??!       2	????/???????/???!????/???:	?_??m???_??m??!?_??m??B      ??!       J	??c??3????c??3??!??c??3??R      ??!       Z	??c??3????c??3??!??c??3??b      ??!       JGPUYF?d<y??b q???<?.X@y$:L??@