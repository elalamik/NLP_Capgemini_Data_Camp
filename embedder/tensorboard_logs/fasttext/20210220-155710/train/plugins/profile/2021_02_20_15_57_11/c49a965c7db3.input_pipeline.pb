	Y??ѯC@Y??ѯC@!Y??ѯC@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-Y??ѯC@@1?d??A@1mo?$???A?8d?b??Iմ?i??@*	R???yX@2U
Iterator::Model::ParallelMapV2$?`S?Q??!???e?FA@)$?`S?Q??1???e?FA@:Preprocessing2F
Iterator::Model??M?«?!?C?檰K@)?nf?????1MC?4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??^???!?5u?4@)???Co??1? f~?c1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate1Xr???!???2?v/@)H1@?	??1????!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceе/??|?!????F?@)е/??|?1????F?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipʦ\?]??!K?UOF@)??f?v?t?1??6z@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?)??F?k?!23ĵE?@)?)??F?k?123ĵE?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?@?ش??!jeﭨ2@)???pzg?1⯯*k@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?????X@Q??V???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	@1?d??A@@1?d??A@!@1?d??A@      ??!       "	mo?$???mo?$???!mo?$???*      ??!       2	?8d?b???8d?b??!?8d?b??:	մ?i??@մ?i??@!մ?i??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?????X@y??V???