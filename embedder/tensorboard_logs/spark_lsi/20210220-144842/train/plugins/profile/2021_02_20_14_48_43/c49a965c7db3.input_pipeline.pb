	??ZC?u=@??ZC?u=@!??ZC?u=@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??ZC?u=@#?J %?:@1K???????A?N????I??1?8 @*	?"??~?[@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatc??Ր???!!?7???D@)????B??1V??&??@:Preprocessing2U
Iterator::Model::ParallelMapV2??ɩ?a??!2vM.7@)??ɩ?a??12vM.7@:Preprocessing2F
Iterator::Model?ȳ˧?!o<??~?D@)Eh??5??1?A???2@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??7?{օ?!J?>;?#@)??7?{օ?1J?>;?#@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??$??}??!????q%@)?=?N??y?1?^?C/?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???OVw?!c[-??-@)???OVw?1c[-??-@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipi?-????!??8?*M@)?*k??qq?1q????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapHp#e????!?i?t?)@)?i?WV?d?1?3?V?	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI\?b?eX@Q?4O?s@@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	#?J %?:@#?J %?:@!#?J %?:@      ??!       "	K???????K???????!K???????*      ??!       2	?N?????N????!?N????:	??1?8 @??1?8 @!??1?8 @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q\?b?eX@y?4O?s@@