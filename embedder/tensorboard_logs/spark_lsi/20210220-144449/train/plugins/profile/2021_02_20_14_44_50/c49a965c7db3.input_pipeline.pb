	L?K?1
:@L?K?1
:@!L?K?1
:@	??`[d????`[d??!??`[d??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6L?K?1
:@!˂???7@1??:????AnM?-???I!??q4???Yϻ??0(??*	$??~jdU@2U
Iterator::Model::ParallelMapV2?yY??![??t?>@)?yY??1[??t?>@:Preprocessing2F
Iterator::Model?B????!¢??AL@)k?m?\p??1(??s˛9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??????!?^ ?ޮ5@)?f?R@ڏ?1?=??-2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceE|V|?!??CD^+ @)E|V|?1??CD^+ @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate\?-??e??!??)9?+@)??K?ut?1K???}Y@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip ^?/???!?]8??E@)Q?+??r?1???F9w@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??^???h?!??S?@)??^???h?1??S?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?q75Ќ?!??*bq0@)????u?a?1?ɰ,&(@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??`[d??I^??F?eX@Q?y???? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	!˂???7@!˂???7@!!˂???7@      ??!       "	??:??????:????!??:????*      ??!       2	nM?-???nM?-???!nM?-???:	!??q4???!??q4???!!??q4???B      ??!       J	ϻ??0(??ϻ??0(??!ϻ??0(??R      ??!       Z	ϻ??0(??ϻ??0(??!ϻ??0(??b      ??!       JGPUY??`[d??b q^??F?eX@y?y???? @