	$}ZEbC@$}ZEbC@!$}ZEbC@	>??v???>??v???!>??v???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6$}ZEbC@2"QhYo?@1??????A?\5????I??A??@Y?gs???*	????SX@2U
Iterator::Model::ParallelMapV2?PۆQ??!P?%N`@@)?PۆQ??1P?%N`@@:Preprocessing2F
Iterator::Model??? ???!?7?JF?K@)??K??$??1֌W?97@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?*?)???!?Ϊs??4@)??*????1 ?6??0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?%????!iA?c? @)?%????1iA?c? @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?ݑ?????!?Q?Z?0@)??ң?~?1%Ħ?h?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip*V?????!q???F@)*T7?s?1???z?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor0???DKn?!?[???f@)0???DKn?1?[???f@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapd?6??:??!???A2K2@)??m3?a?1(I?7G?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 81.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?16.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9>??v???Im쩿?mX@QE?cr???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	2"QhYo?@2"QhYo?@!2"QhYo?@      ??!       "	????????????!??????*      ??!       2	?\5?????\5????!?\5????:	??A??@??A??@!??A??@B      ??!       J	?gs????gs???!?gs???R      ??!       Z	?gs????gs???!?gs???b      ??!       JGPUY>??v???b qm쩿?mX@yE?cr???