	/N|???@@/N|???@@!/N|???@@	?E73???E73??!?E73??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6/N|???@@0???s?>@1ܟ??????A
?s34??Is?????Y2?????*	??~j?,Y@2U
Iterator::Model::ParallelMapV2?)??Y???!???>@)?)??Y???1???>@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat'i??֖?!B?4f?%6@)hx?㮝?1n??x?2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceIZ??c??!?U	x?0@)IZ??c??1?U	x?0@:Preprocessing2F
Iterator::Model+ۇ?????!_?g??1G@)???q???1?K2??^0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?\߇????!"0`??7@)?"??|?1?4i[??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???죫?!? ?#?J@)d${??!u?1݃?;%~@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???ާ?p?!R_뵻)@)???ާ?p?1R_뵻)@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?^f?(??!	?	??V:@)?/???"e?13?͎)@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?E73??INj1RX@Q??dW? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	0???s?>@0???s?>@!0???s?>@      ??!       "	ܟ??????ܟ??????!ܟ??????*      ??!       2	
?s34??
?s34??!
?s34??:	s?????s?????!s?????B      ??!       J	2?????2?????!2?????R      ??!       Z	2?????2?????!2?????b      ??!       JGPUY?E73??b qNj1RX@y??dW? @