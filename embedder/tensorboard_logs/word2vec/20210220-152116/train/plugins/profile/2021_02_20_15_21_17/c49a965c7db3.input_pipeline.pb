	~??gxD@~??gxD@!~??gxD@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-~??gxD@?????A@1???_vO??A?m???I???9"@*	??(\?:T@2U
Iterator::Model::ParallelMapV21?:9Cq??! q?J?J<@)1?:9Cq??1 q?J?J<@:Preprocessing2F
Iterator::Model???	ۥ?!?????`J@)?ʠ??D??1Q?]tv8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat1?{?O???!??J?%e6@)?52;???1"???n2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceOʤ?6 {?!Q?v,K @)Oʤ?6 {?1Q?v,K @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateWya???!??m?2?-@)??M~?Nv?1?p?Y?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?=?Ӟ???!HlUXP?G@)q??Ŧu?1xv?l?!@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor]???Ej?!????@)]???Ej?1????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap%Z?xZ??!??1?Q2@).8??_?f?1?,?K??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 85.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?12.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI1t?=?X@Qc??b????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?????A@?????A@!?????A@      ??!       "	???_vO?????_vO??!???_vO??*      ??!       2	?m????m???!?m???:	???9"@???9"@!???9"@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q1t?=?X@yc??b????