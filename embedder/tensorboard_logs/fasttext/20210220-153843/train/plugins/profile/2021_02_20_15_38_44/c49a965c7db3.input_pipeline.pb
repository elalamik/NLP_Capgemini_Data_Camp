	?+?SA@?+?SA@!?+?SA@	??̅@????̅@??!??̅@??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?+?SA@8?a?A?>@1?	?_????A??5?K??I+?m?@Y߿yq????*	/?$?u^@2U
Iterator::Model::ParallelMapV2?ɐc???!??&??<@)?ɐc???1??&??<@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??????!??????<@)??3?c???1?h?*?7@:Preprocessing2F
Iterator::Model?L??ݬ?!??L?=#G@)%??????1ϓ?H??1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatq??Ŗ?!W?be?@2@)?(@̘??1?????-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceo,(?4z?!q?hZ@)o,(?4z?1q?hZ@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??Ss????!@u?H??J@)???s??r?1?f??+E@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor? !??p?!????
@)? !??p?1????
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???Kģ?!S????@)cz?(k?1?r??W?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??̅@??IOϲMAX@Q?w3(?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	8?a?A?>@8?a?A?>@!8?a?A?>@      ??!       "	?	?_?????	?_????!?	?_????*      ??!       2	??5?K????5?K??!??5?K??:	+?m?@+?m?@!+?m?@B      ??!       J	߿yq????߿yq????!߿yq????R      ??!       Z	߿yq????߿yq????!߿yq????b      ??!       JGPUY??̅@??b qOϲMAX@y?w3(?@