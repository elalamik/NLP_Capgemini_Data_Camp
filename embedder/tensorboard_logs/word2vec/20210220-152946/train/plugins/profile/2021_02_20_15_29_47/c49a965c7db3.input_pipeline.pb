	??{W>@??{W>@!??{W>@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??{W>@???1?T<@1?3g}ʱ??A?˚X?+??I1?߄B???*	<?O???b@2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor^H??0~??!???j?H@)^H??0~??1???j?H@:Preprocessing2U
Iterator::Model::ParallelMapV2?ng_y???!p-:???3@)?ng_y???1p-:???3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?ٕ????!????LM@)kIG9?M??1?~???)%@:Preprocessing2F
Iterator::Model??E??(??!r????<@)?@H0???1'?|?6?!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice;ŪAx?!????|@);ŪAx?1????|@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?AA)Z???!?<??@)?{G?	1w?1jq,y@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???tp??!????Q@)\?	??bu?1.????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapm 6 B??! ?tqW"@)???2#b?1?v?n_???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIt???]?X@Q?? C?(??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???1?T<@???1?T<@!???1?T<@      ??!       "	?3g}ʱ???3g}ʱ??!?3g}ʱ??*      ??!       2	?˚X?+???˚X?+??!?˚X?+??:	1?߄B???1?߄B???!1?߄B???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qt???]?X@y?? C?(??