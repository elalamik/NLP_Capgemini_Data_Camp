	-@?jVC@-@?jVC@!-@?jVC@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails--@?jVC@c	kc??A@1?)?n???A?>?'Iל?I??8G@*	?G?zLW@2U
Iterator::Model::ParallelMapV2?:q9^???!?4/??KA@)?:q9^???1?4/??KA@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?u7O??!F?E?[T6@)??{G?	??1????V?1@:Preprocessing2F
Iterator::Model"q??]??!z8-??I@)0?x??n??1?_?w0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateˀ??,'??!??GAa?1@)??7/N|??1:?????&@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceN^??y?!孅O?@)N^??y?1孅O?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip
???1Z??!????^xH@)֬3?/.u?1c03?1@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?M???q?!?=?@)?M???q?1?=?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?u6????!???'?5@)??|??g?1H?-4??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?t?6?X@Q?V?bL???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	c	kc??A@c	kc??A@!c	kc??A@      ??!       "	?)?n????)?n???!?)?n???*      ??!       2	?>?'Iל??>?'Iל?!?>?'Iל?:	??8G@??8G@!??8G@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?t?6?X@y?V?bL???