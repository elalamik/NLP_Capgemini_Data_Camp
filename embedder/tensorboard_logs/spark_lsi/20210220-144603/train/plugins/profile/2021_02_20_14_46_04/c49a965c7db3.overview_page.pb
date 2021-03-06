?	j2?m?7@j2?m?7@!j2?m?7@	rV?????rV?????!rV?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6j2?m?7@?dT?95@1>?h????AA??_???I?/h!#??Y=a??M??*?x?&1?V@)      =2U
Iterator::Model::ParallelMapV2<??kЗ??!??TV?M@@)<??kЗ??1??TV?M@@:Preprocessing2F
Iterator::Model;pΈ?ި?!xE?ݲ?J@):"ߥ?%??1˷?Sh4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?KqU?w??!?+jl?6@)?dT8??1
??R2k3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??>s֧??!???Iw?.@)?L??}?1D=?q?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??w??x{?!^??}G@)??w??x{?1^??}G@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?G??
??!??W"M~G@)??f?|u?1???^??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorm?i?*?i?!X$$?б@)m?i?*?i?1X$$?б@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapy?|???!??a2@)?+e?Xg?1Ɨ???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9rV?????IlO4c\)X@Q֎଒k@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?dT?95@?dT?95@!?dT?95@      ??!       "	>?h????>?h????!>?h????*      ??!       2	A??_???A??_???!A??_???:	?/h!#???/h!#??!?/h!#??B      ??!       J	=a??M??=a??M??!=a??M??R      ??!       Z	=a??M??=a??M??!=a??M??b      ??!       JGPUYrV?????b qlO4c\)X@y֎଒k@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?????A??!?????A??"<
sequential_41/dense_123/MatMulMatMul,W~t??!h_??0"-
IteratorGetNext/_1_Send??a??Q??!??D????"J
,gradient_tape/sequential_41/dense_123/MatMulMatMul?T????!&?????0"<
sequential_41/dense_125/SoftmaxSoftmaxS??? ??!ۜ;????"<
sequential_41/dense_124/MatMulMatMul?Q??1??!?Ad|?q??0"J
,gradient_tape/sequential_41/dense_124/MatMulMatMuld?jw????!^??2??0"J
.gradient_tape/sequential_41/dense_125/MatMul_1MatMulfQ"Ć???!t????"<
sequential_41/dense_125/MatMulMatMul?D?m?S??!????R ??0"J
.gradient_tape/sequential_41/dense_124/MatMul_1MatMul????????!h1Ȕ?o??Q      Y@Y[ZZZZZ6@ajiiiiiS@qi??8?"G@yS?(?/???"?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?46.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 