	46<??6@46<??6@!46<??6@	??XP????XP??!??XP??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails646<??6@???΅4@1?_?E???AH?V
???I@?z?ǻ??Y?
G?J???*	????+W@2U
Iterator::Model::ParallelMapV2SAEկt??!?߃?X@@)SAEկt??1?߃?X@@:Preprocessing2F
Iterator::Model???H????!?????xM@)??ۻ}??1?1????:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?P?f??!C???"5@)=C8fٓ??1?|9.`w1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????ׇ?!@?=? )@)?@?vx?1??????@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??	m9w?!????-x@)??	m9w?1????-x@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???Z?{??!r:?D@)Y???jq?1@?
?Y@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??i?k?!1>E?Z@)??i?k?11>E?Z@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???Y.??!"R???.@)YLl>?e?1P+Q??.@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??XP??IW??q]XX@QH??{Q?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???΅4@???΅4@!???΅4@      ??!       "	?_?E????_?E???!?_?E???*      ??!       2	H?V
???H?V
???!H?V
???:	@?z?ǻ??@?z?ǻ??!@?z?ǻ??B      ??!       J	?
G?J????
G?J???!?
G?J???R      ??!       Z	?
G?J????
G?J???!?
G?J???b      ??!       JGPUY??XP??b qW??q]XX@yH??{Q?@