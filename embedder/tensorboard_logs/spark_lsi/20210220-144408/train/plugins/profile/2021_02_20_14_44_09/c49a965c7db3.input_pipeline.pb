	?x?'9;@?x?'9;@!?x?'9;@	????????????????!????????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?x?'9;@]???i9@1Hqh??Ae8?πz??I????????Y??p?q???*	??????T@2U
Iterator::Model::ParallelMapV2??!????!??G?I<@)??!????1??G?I<@:Preprocessing2F
Iterator::ModelǺ?????!??7???J@)?[??b???1q?'_E?9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??U?6œ?!?O??^&7@)aTR'????16GlP]3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatej???늉?!2?????-@)?d??7iz?1I???@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceޏ?/??x?!V??_?@)ޏ?/??x?1V??_?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?N@aã?!a"?z8$G@)??g\8r?1?1O?&@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorPqx??i?!?D??pH@)Pqx??i?1?D??pH@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??!r?z??!?(?"g?1@)?,??;?c?1\???? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????????I??#ˍoX@Q?Ӥ^??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	]???i9@]???i9@!]???i9@      ??!       "	Hqh??Hqh??!Hqh??*      ??!       2	e8?πz??e8?πz??!e8?πz??:	????????????????!????????B      ??!       J	??p?q?????p?q???!??p?q???R      ??!       Z	??p?q?????p?q???!??p?q???b      ??!       JGPUY????????b q??#ˍoX@y?Ӥ^??