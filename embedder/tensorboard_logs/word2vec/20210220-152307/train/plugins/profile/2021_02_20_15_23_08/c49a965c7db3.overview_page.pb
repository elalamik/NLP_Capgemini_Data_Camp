?	'?%????@'?%????@!'?%????@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-'?%????@nLOX?Q<@1gHū,??AX歺դ?I܁:?1@*	{?G?:U@2U
Iterator::Model::ParallelMapV2j?TQ???!ުӾ>@)j?TQ???1ުӾ>@:Preprocessing2F
Iterator::Model?<c_????!S?pk?L@)?@j'??1?$???:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?O??n??!?'(9??5@)fJ?o	???1Ǝ ??A2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceZK ?)u?!d̃Q?V@)ZK ?)u?1d̃Q?V@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateˡE?????!&@D?#(@);??l??t?1???I?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?<*??!??@??PE@)?Op??s?1F??f!?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoraU??N?i?!>?<Ei@)aU??N?i?1>?<Ei@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?+?p?{??!u?E]t.@)?(B?v?e?17E??A	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?8.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??J,aX@Q?
?v?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	nLOX?Q<@nLOX?Q<@!nLOX?Q<@      ??!       "	gHū,??gHū,??!gHū,??*      ??!       2	X歺դ?X歺դ?!X歺դ?:	܁:?1@܁:?1@!܁:?1@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??J,aX@y?
?v?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?ZN?Ǵ??!?ZN?Ǵ??"=
sequential_164/dense_492/MatMulMatMul??h???!C[_8˅??0"=
 sequential_164/dense_494/SoftmaxSoftmaxm?7s??!?(b/24??"=
sequential_164/dense_493/MatMulMatMul????ȓ?!??5I???0"K
/gradient_tape/sequential_164/dense_493/MatMul_1MatMul	B?"?(??!?m?e???"-
IteratorGetNext/_2_Recv?C???ȑ?!Xv?J?+??"K
/gradient_tape/sequential_164/dense_494/MatMul_1MatMul?F???!????P???"K
-gradient_tape/sequential_164/dense_493/MatMulMatMul?+C?????!S?狱??0"K
-gradient_tape/sequential_164/dense_492/MatMulMatMul?ft?e>??!?X%Er???0"b
Igradient_tape/sequential_164/batch_normalization_80/batchnorm/add_1/Sum_1Sumx$?O????!ߩ?Y???Q      Y@Y??(??(.@a?뺮?:U@q?1?-?S@y]?w҅???"?
both?Your program is POTENTIALLY input-bound because 89.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?8.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?79.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 