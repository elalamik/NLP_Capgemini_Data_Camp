	?iP4?C@?iP4?C@!?iP4?C@	?\Ǉ=???\Ǉ=??!?\Ǉ=??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?iP4?C@??̓kjA@1?<i????A"?? >???I??`ũ?@Y?? ???*	?x?&1?u@2U
Iterator::Model::ParallelMapV2??Û5x??!?4??O?N@)??Û5x??1?4??O?N@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateyW=`2??!u??*Sd3@)??6????1H?Βz?0@:Preprocessing2F
Iterator::Model?߃?.m??!6????'Q@)u?ɧ??1S?w0?@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?W???T??!?1??Lp@)д??h???1?P???n@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???v?
??!Iy?`?6@)??,?ņ?1?d?y?	@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?]?)ʥ??!i????@)?]?)ʥ??1i????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???sһ?!%??h`?@)cz?({?1J??????:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????q?!??/???)?????q?1??/???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 87.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?10.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?\Ǉ=??I?~M??qX@Qhy?J??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??̓kjA@??̓kjA@!??̓kjA@      ??!       "	?<i?????<i????!?<i????*      ??!       2	"?? >???"?? >???!"?? >???:	??`ũ?@??`ũ?@!??`ũ?@B      ??!       J	?? ????? ???!?? ???R      ??!       Z	?? ????? ???!?? ???b      ??!       JGPUY?\Ǉ=??b q?~M??qX@yhy?J??