	??H??@@??H??@@!??H??@@	????????????!??????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??H??@@c???&D>@1?4????Amu9% &??IʉvR???Y?f׽???*	??ʡ?V@2U
Iterator::Model::ParallelMapV2B??????!?1??+A@)B??????1?1??+A@:Preprocessing2F
Iterator::ModelpB!???!?????L@)?~P)???1!??>d7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???dȑ?!??H?F3@)?Z??K???1?֘?l/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate]??ky???!Ab?r?'-@)X?\T|?1L
???w@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicea?????y?!5?U??@)a?????y?15?U??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??d??~??!?@m?"E@)ADj??4s?1J????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorS=??Mj?!??⫃@)S=??Mj?1??⫃@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap]k?SUh??!??T?3?1@)x???Ĭg?1?v?~??	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??????I??=??X@Q?bv?T?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	c???&D>@c???&D>@!c???&D>@      ??!       "	?4?????4????!?4????*      ??!       2	mu9% &??mu9% &??!mu9% &??:	ʉvR???ʉvR???!ʉvR???B      ??!       J	?f׽????f׽???!?f׽???R      ??!       Z	?f׽????f׽???!?f׽???b      ??!       JGPUY??????b q??=??X@y?bv?T?@