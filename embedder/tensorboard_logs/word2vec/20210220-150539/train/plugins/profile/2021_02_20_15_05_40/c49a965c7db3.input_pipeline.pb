	?B???>@?B???>@!?B???>@	?(_?5???(_?5??!?(_?5??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?B???>@p???5<@1???P???A?.???ި?I^I?\????YHN&nĨ?*	?t?:`@2U
Iterator::Model::ParallelMapV2l??3?I??!??s?ԃ;@)l??3?I??1??s?ԃ;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatXo?
????!?K?#??<@)??"????17?&B7@:Preprocessing2F
Iterator::Modelr???	??!??1J%WD@)IG9?M???1?????T*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?d?pu??!qbz?h?(@)?d?pu??1qbz?h?(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip[C??????!0εڨM@)???JY???1p??s"@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatex$(~???!Q*?N83@)?#~?.??1X??jZ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorL?^I?|?!??(???@)L?^I?|?1??(???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapN??;P???!PإC=?5@)?V횐?h?1	:?kr?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?(_?5??I?J??_X@Q0'wf?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	p???5<@p???5<@!p???5<@      ??!       "	???P??????P???!???P???*      ??!       2	?.???ި??.???ި?!?.???ި?:	^I?\????^I?\????!^I?\????B      ??!       J	HN&nĨ?HN&nĨ?!HN&nĨ?R      ??!       Z	HN&nĨ?HN&nĨ?!HN&nĨ?b      ??!       JGPUY?(_?5??b q?J??_X@y0'wf?@