	2?	??^B@2?	??^B@!2?	??^B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-2?	??^B@u??iA@1?z?????A?q?߅???I}$%=???*	?????T@2F
Iterator::Model:?ؗl<??!%ʴ??]L@)??mnLO??1??*??s<@:Preprocessing2U
Iterator::Model::ParallelMapV2?D??)??!h?>^?G<@)?D??)??1h?>^?G<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatb.??n??!??Z	?5@)?/??L???1??<nc?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceoH?'{?!r}2??@)oH?'{?1r}2??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?*??p???!$?#?+@)??9"ߥt?1֜??*@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipɮ???{??!?5K[9?E@)կt><Kp?1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?Pj/??h?!???d/-@)?Pj/??h?1???d/-@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?;?????!?a?f??0@)???y7d?1 ?Q??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??L??X@Q??lz??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	u??iA@u??iA@!u??iA@      ??!       "	?z??????z?????!?z?????*      ??!       2	?q?߅????q?߅???!?q?߅???:	}$%=???}$%=???!}$%=???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??L??X@y??lz??