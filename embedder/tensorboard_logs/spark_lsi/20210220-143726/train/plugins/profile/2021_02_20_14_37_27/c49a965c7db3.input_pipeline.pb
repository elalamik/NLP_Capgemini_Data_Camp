	h]??@3@h]??@3@!h]??@3@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-h]??@3@???E?
1@1?հ???A<?H??ڢ?I???J#f??*	??ʡ?Z@2U
Iterator::Model::ParallelMapV2?~l????!Y\	?9@)?~l????1Y\	?9@:Preprocessing2F
Iterator::Model?F?@??!?!?pxG@)?F???164ń??4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat%t??Y??!$?0??G3@)S<.?ED??1????>?/@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapn0?a?[??!R?d??;@)i??Q???1?D?"&/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate
H?`???!?b???i(@)b,?/o}?1AM????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???-c??!\?p???J@)??Քd}?1?PN
??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?c#??w?!?w/=??@)?c#??w?1?w/=??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??IӠhn?!?Z???@)??IӠhn?1?Z???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIr!?'WX@Q??a@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???E?
1@???E?
1@!???E?
1@      ??!       "	?հ????հ???!?հ???*      ??!       2	<?H??ڢ?<?H??ڢ?!<?H??ڢ?:	???J#f?????J#f??!???J#f??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qr!?'WX@y??a@