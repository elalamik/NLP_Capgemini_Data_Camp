	?O??4:@?O??4:@!?O??4:@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?O??4:@I?Q18@1V???n???A???J????IN%@???*	?Q??W@2U
Iterator::Model::ParallelMapV2???y0??!\??.lA@)???y0??1\??.lA@:Preprocessing2F
Iterator::Model?4-?2??!?L}<??K@)$?jf-??1??@?&5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatK̳?V|??!????d?4@)x?a????1u??ŏ?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??fG????!?L1䃒.@)1??c?g~?1??w?? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???*?w{?!΅soX@)???*?w{?1΅soX@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip-?"?J ??!O???RF@)h?,{x?14e??n@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(?8'0m?!?????@)(?8'0m?1?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??_?????!?6~??1@)0?a?[>b?1-?,?nF@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIg%yX@Q?^?? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	I?Q18@I?Q18@!I?Q18@      ??!       "	V???n???V???n???!V???n???*      ??!       2	???J???????J????!???J????:	N%@???N%@???!N%@???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qg%yX@y?^?? @