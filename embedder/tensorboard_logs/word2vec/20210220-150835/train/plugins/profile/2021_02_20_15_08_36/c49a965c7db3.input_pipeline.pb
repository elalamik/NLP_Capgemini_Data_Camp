	p$?`S?9@p$?`S?9@!p$?`S?9@	*??!V??*??!V??!*??!V??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6p$?`S?9@??Ln?7@1??2W???A?0E?4~??I????W???Y?OVW??*LbX9?[@)      =2U
Iterator::Model::ParallelMapV2???L???!??Ė??;@)???L???1??Ė??;@:Preprocessing2F
Iterator::Model"lxz?,??!"V?sO?G@)?T4??Ζ?1??-Q?3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateo.??'H??!?P?x?8@)?T?e??1uT[Eq?0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???Ŕ?!Z?M,&.2@)??T2 T??1|v9?U.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???9?Ł?!f??;@)???9?Ł?1f??;@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?}8H????!ݩ??6J@)???߾|?1??Y8?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????'??!??I?l<@)?$W@?n?1?????
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensory??"??k?!?@!~?@)y??"??k?1?@!~?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9*??!V??Io?z??OX@Q?`oL?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??Ln?7@??Ln?7@!??Ln?7@      ??!       "	??2W?????2W???!??2W???*      ??!       2	?0E?4~???0E?4~??!?0E?4~??:	????W???????W???!????W???B      ??!       J	?OVW???OVW??!?OVW??R      ??!       Z	?OVW???OVW??!?OVW??b      ??!       JGPUY*??!V??b qo?z??OX@y?`oL?@