	ڏ?a?@@ڏ?a?@@!ڏ?a?@@	?'?G????'?G???!?'?G???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6ڏ?a?@@u?b?T?>@1?we???A??|#?g??Ih=|?(??Y|}?K????*	?/?$>V@2U
Iterator::Model::ParallelMapV2K:??l??!?2?d?>@)K:??l??1?2?d?>@:Preprocessing2F
Iterator::Modelׄ?Ơ??!???K?L@)dϞ??$??1֎u2?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??Z	?%??!?|+?e?2@)?DIH?m??1`#.?4/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????U???!?K??/@)?G??~?1??$d? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??	???{?!?D?k܆@)??	???{?1?D?k܆@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?2???y??!Q?_?`E@)???SVs?1?r瞒9@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???)Wxg?!;Z?4??	@)???)Wxg?1;Z?4??	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapφ?3????!?v??2@)?{?i??c?1?{????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?'?G???Iw?5Ă]X@Q'l2?~? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	u?b?T?>@u?b?T?>@!u?b?T?>@      ??!       "	?we????we???!?we???*      ??!       2	??|#?g????|#?g??!??|#?g??:	h=|?(??h=|?(??!h=|?(??B      ??!       J	|}?K????|}?K????!|}?K????R      ??!       Z	|}?K????|}?K????!|}?K????b      ??!       JGPUY?'?G???b qw?5Ă]X@y'l2?~? @