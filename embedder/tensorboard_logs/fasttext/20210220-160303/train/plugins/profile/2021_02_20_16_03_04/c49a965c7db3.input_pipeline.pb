	~?k?,?D@~?k?,?D@!~?k?,?D@	 ??74?? ??74??! ??74??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6~?k?,?D@??я?MC@1˹W?}??A?)V?ܦ?I?'*??@Y???V??*	q=
ף Z@2U
Iterator::Model::ParallelMapV2Rb??vK??!?GX?RA@)Rb??vK??1?GX?RA@:Preprocessing2F
Iterator::Model????5??!:?A??:L@)?i?{?ԗ?1?^ө?D6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatuZ?A????!??J??:5@)???uoE??1?`??1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceҧU??f~?!\ mc'h@)ҧU??f~?1\ mc'h@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate-??2:??!???)pO+@)?4*p?|?1?r??6@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip9&???L??!??Fh?E@)??????u?1<???S@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?v/??q?!??3Q?@)?v/??q?1??3Q?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?x"??p??!?&:Z;1@)?x'?n?1??J?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9 ??74??I?gA??rX@Q???h????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??я?MC@??я?MC@!??я?MC@      ??!       "	˹W?}??˹W?}??!˹W?}??*      ??!       2	?)V?ܦ??)V?ܦ?!?)V?ܦ?:	?'*??@?'*??@!?'*??@B      ??!       J	???V?????V??!???V??R      ??!       Z	???V?????V??!???V??b      ??!       JGPUY ??74??b q?gA??rX@y???h????