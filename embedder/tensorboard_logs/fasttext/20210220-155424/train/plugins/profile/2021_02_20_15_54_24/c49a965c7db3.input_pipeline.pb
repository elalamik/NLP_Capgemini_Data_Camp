	/????C@/????C@!/????C@	?]D?g???]D?g??!?]D?g??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6/????C@,*?t??A@1?f??}q??AW?/?'??I ??P?@YQ?B?y???*	/?$?X@2U
Iterator::Model::ParallelMapV2\?d8?Ϡ?!|??ҿ@@)\?d8?Ϡ?1|??ҿ@@:Preprocessing2F
Iterator::Modelƅ!Y???!UUUUU?L@)?t=?u???1?{???7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??ΤM??!????95@)?AȗP??1?M??R@1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???֪}?!g????@)???֪}?1g????@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?.??$??!oyhR
,@)ڨN??z?1w????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????n??!?????ZE@)????@gr?1????U@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor* ?3h?o?!a?2'm?@)* ?3h?o?1a?2'm?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap9?)9'???!?)T7?0@)???)g?1V:j?p@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?]D?g??IG??:?lX@QL???? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	,*?t??A@,*?t??A@!,*?t??A@      ??!       "	?f??}q???f??}q??!?f??}q??*      ??!       2	W?/?'??W?/?'??!W?/?'??:	 ??P?@ ??P?@! ??P?@B      ??!       J	Q?B?y???Q?B?y???!Q?B?y???R      ??!       Z	Q?B?y???Q?B?y???!Q?B?y???b      ??!       JGPUY?]D?g??b qG??:?lX@yL???? @