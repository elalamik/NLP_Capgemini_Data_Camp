	3??O?5@3??O?5@!3??O?5@	̋?m+??̋?m+??!̋?m+??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails63??O?5@s?FZ*?3@1???OU??AS#?3????I??ߠ?z??Y?J?8????*	+??*n@2U
Iterator::Model::ParallelMapV2?蜟?8??!????]P@)?蜟?8??1????]P@:Preprocessing2F
Iterator::Model?oB@??!?OqC?S@)?H?}??1ᰒ?i*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateƾd????!x??c5?%@)7?',????1?\s7?@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??CR%??!^?????@)???P1Ώ?1??o?^?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice1zn?+??!?? ??@)1zn?+??1?? ??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipӆ??????!)?:??~5@)?8K?rr?1?ׇ?-???:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?=?N??i?!?e ?S???)?=?N??i?1?e ?S???:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?pu ?]??!,????'@)????8b?1,[??"}??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9͋?m+??I3??FG(X@Q?s\?`?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	s?FZ*?3@s?FZ*?3@!s?FZ*?3@      ??!       "	???OU?????OU??!???OU??*      ??!       2	S#?3????S#?3????!S#?3????:	??ߠ?z????ߠ?z??!??ߠ?z??B      ??!       J	?J?8?????J?8????!?J?8????R      ??!       Z	?J?8?????J?8????!?J?8????b      ??!       JGPUY͋?m+??b q3??FG(X@y?s\?`?@