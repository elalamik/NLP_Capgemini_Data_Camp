	???"A@???"A@!???"A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-???"A@m????@@1?-9(a??A??Wt?5??I?HP????*	*????V@2U
Iterator::Model::ParallelMapV2;s	????!?垏?=@);s	????1?垏?=@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??@?M???! '*?.9@)?O0?A??18???p4@:Preprocessing2F
Iterator::Model??׺???!?
? TF@)?x@ٔ+??1=??4?-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?=Զa??!??YY??5@)?7? ???1Mf?Ļg*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceO??D???!?	??? @)O??D???1?	??? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?,?Yf??!0????K@)?t?_??t?1?t?0?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??L?nq?!?)|D?@)??L?nq?1?)|D?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMaprjg??R??!,f??'?8@)?6S!?g?1?W???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??[?O?X@QB?
) ???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	m????@@m????@@!m????@@      ??!       "	?-9(a???-9(a??!?-9(a??*      ??!       2	??Wt?5????Wt?5??!??Wt?5??:	?HP?????HP????!?HP????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??[?O?X@yB?
) ???