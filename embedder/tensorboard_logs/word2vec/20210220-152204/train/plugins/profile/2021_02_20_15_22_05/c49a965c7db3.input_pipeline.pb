	??I~??B@??I~??B@!??I~??B@	%??????%??????!%??????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??I~??B@X7?7A@1~? ????A??p?Qe??I'?%?????Y??:?p??*	??C?l?V@2U
Iterator::Model::ParallelMapV2t	??????!I??4?@@)t	??????1I??4?@@:Preprocessing2F
Iterator::Model8N
?g??!@??+R~L@)???[???1????8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??? ???!?\??O%5@))? ???1E?Ly?b1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???0B??!????-*@)ӄ?'c|x?1?1??l@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????x?!??mC?@)????x?1??mC?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??(????!?Xԭ?E@)a??>??t?1?v?OIr@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?K????k?!???Ѳ@)?K????k?1???Ѳ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap ?d?F ??!7ЀyA0@)???)Wxg?13r??T	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9%??????I?vZ15X@Q?׾?? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	X7?7A@X7?7A@!X7?7A@      ??!       "	~? ????~? ????!~? ????*      ??!       2	??p?Qe????p?Qe??!??p?Qe??:	'?%?????'?%?????!'?%?????B      ??!       J	??:?p????:?p??!??:?p??R      ??!       Z	??:?p????:?p??!??:?p??b      ??!       JGPUY%??????b q?vZ15X@y?׾?? @