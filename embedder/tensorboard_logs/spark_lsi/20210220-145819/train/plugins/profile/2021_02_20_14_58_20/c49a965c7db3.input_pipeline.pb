	K???J?E@K???J?E@!K???J?E@	?7?H|\???7?H|\??!?7?H|\??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6K???J?E@B?V?9?D@1?ۄ{e???A䃞ͪϭ?I????????YY???j??*	?????ya@2U
Iterator::Model::ParallelMapV2E?a????!i??+N#A@)E?a????1i??+N#A@:Preprocessing2F
Iterator::Model?;??.??!m?׺w?J@)?Դ?i???1?SP3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??j??ǜ?!???fK4@)&?L1A??1Awh;<>0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate>???V??!?v@M0@)~6rݔ???1?{%??"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???_w???!|X????@)???_w???1|X????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?> ?M???!?%(E?4G@)5@i?QH??1?4cz?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor2?w?v?!?;?Yy?@)2?w?v?1?;?Yy?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??a0???!/?آ&?3@)s?<G??t?1G,?4?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?7?H|\??IG??ËX@Q6???x??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B?V?9?D@B?V?9?D@!B?V?9?D@      ??!       "	?ۄ{e????ۄ{e???!?ۄ{e???*      ??!       2	䃞ͪϭ?䃞ͪϭ?!䃞ͪϭ?:	????????????????!????????B      ??!       J	Y???j??Y???j??!Y???j??R      ??!       Z	Y???j??Y???j??!Y???j??b      ??!       JGPUY?7?H|\??b qG??ËX@y6???x??