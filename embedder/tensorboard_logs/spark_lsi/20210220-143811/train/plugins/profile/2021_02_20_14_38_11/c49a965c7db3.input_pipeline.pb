	wۅ?:?<@wۅ?:?<@!wۅ?:?<@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-wۅ?:?<@?_ ?	:@1S?1?#???A??|	??I????????*	??K7?\@2F
Iterator::ModelW횐???!h????L@)4-?2??1?V?U?=@:Preprocessing2U
Iterator::Model::ParallelMapV2/M??.??!?=k??O:@)/M??.??1?=k??O:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?ajK???!t?JgZ3@)Z???֑?1?3??-/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate=?Е??!?T?:?v1@)f??ᔹ??1??>??l&@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??-?|?!??_@)??-?|?1??_@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipa???)??!?>^?E@)"????v?1)?Xq?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?q75p?!O??bB@)?q75p?1O??bB@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?T4??Ζ?!49???3@)??+H3f?1%??]Z@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???5?bX@Q~,?IY?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?_ ?	:@?_ ?	:@!?_ ?	:@      ??!       "	S?1?#???S?1?#???!S?1?#???*      ??!       2	??|	????|	??!??|	??:	????????????????!????????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???5?bX@y~,?IY?@