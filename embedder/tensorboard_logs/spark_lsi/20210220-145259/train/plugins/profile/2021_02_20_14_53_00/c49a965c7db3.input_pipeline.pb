	4?27>@4?27>@!4?27>@	?~'9???~'9??!?~'9??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails64?27>@?ԕ???;@1??8?t??A??67?'??I???9#
??YL⬈????*	(1??T@2U
Iterator::Model::ParallelMapV2?n???!?C ?OA@)?n???1?C ?OA@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?)1	??!?d?6?5@)-z??y??1???#2@:Preprocessing2F
Iterator::Model?9y?	???!Y?]?#'J@)? %̴??1?b3???1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??-</??!6???0@)????N}?1??\?q!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??O???x?!?y??̗@)??O???x?1?y??̗@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?x?&1??!?f?8??G@)??O?t?1?q?Ϛ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???ȑΐ?!?rK?4@)I?V?j?1U?ǖ?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?ek}??f?!i>??(@)?ek}??f?1i>??(@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?~'9??Im?ӒtX@Q???Y??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?ԕ???;@?ԕ???;@!?ԕ???;@      ??!       "	??8?t????8?t??!??8?t??*      ??!       2	??67?'????67?'??!??67?'??:	???9#
?????9#
??!???9#
??B      ??!       J	L⬈????L⬈????!L⬈????R      ??!       Z	L⬈????L⬈????!L⬈????b      ??!       JGPUY?~'9??b qm?ӒtX@y???Y??