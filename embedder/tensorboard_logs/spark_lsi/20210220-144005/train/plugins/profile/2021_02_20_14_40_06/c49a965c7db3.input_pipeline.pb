	?|?5^?<@?|?5^?<@!?|?5^?<@	P?s???P?s???!P?s???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?|?5^?<@??Rx??9@1??ʡ???A???(@??IV??#)???YN??????*	^?I3b@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatV??#)??!? ??Z?@@)e????c??1?᛭H	>@:Preprocessing2U
Iterator::Model::ParallelMapV2ͭVc	??!?Rz"2@)ͭVc	??1?Rz"2@:Preprocessing2F
Iterator::Model?x??[Y??!?{e?g?A@)(D?!T???1o?x?U61@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?.????!2B? ?)P@)N?G????1T?fe?&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate%?)? ???!?o.g??0@)?IbI????1?戻p#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?????Ԅ?!Z?튆?@)?????Ԅ?1Z?튆?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?U?@?)v?!,? ?c?@)?U?@?)v?1,? ?c?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?qp?????!?'?"Hk3@)vq?-p?1?M?E?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9P?s???I?7?X@Q?ૃ??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??Rx??9@??Rx??9@!??Rx??9@      ??!       "	??ʡ?????ʡ???!??ʡ???*      ??!       2	???(@?????(@??!???(@??:	V??#)???V??#)???!V??#)???B      ??!       J	N??????N??????!N??????R      ??!       Z	N??????N??????!N??????b      ??!       JGPUYP?s???b q?7?X@y?ૃ??@