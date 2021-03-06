?	{L?4??3@{L?4??3@!{L?4??3@	]c;?Z???]c;?Z???!]c;?Z???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6{L?4??3@\T??bz1@1??"j????A?t??????I????_)??Y?k?}?
??*	?v??d@2F
Iterator::ModelX???<???!qھ>aD@)a?unڌ??1?`?8?7@:Preprocessing2U
Iterator::Model::ParallelMapV2?:V)=ӛ?!o??xE?0@)?:V)=ӛ?1o??xE?0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatG?`???!???O/1@)	T? ?!??1?AP?,,@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????y???!\\?L?'@)????y???1\\?L?'@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip7qr?CQ??!??%A??M@)?r????1??.??&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????Ŋ??!ܺ?Oܕ6@)	???k??1?߬k7%@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapN(D?!T??!;??0?>@)?]?o%??1????k? @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??????s?!?<>!@)??????s?1?<>!@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 87.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?8.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9\c;?Z???IH6n@X@Q?
5?-@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	\T??bz1@\T??bz1@!\T??bz1@      ??!       "	??"j??????"j????!??"j????*      ??!       2	?t???????t??????!?t??????:	????_)??????_)??!????_)??B      ??!       J	?k?}?
???k?}?
??!?k?}?
??R      ??!       Z	?k?}?
???k?}?
??!?k?}?
??b      ??!       JGPUY\c;?Z???b qH6n@X@y?
5?-@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?????s??!?????s??"9
sequential_1/dense_3/MatMulMatMul}}?6{??!-?*4???0"9
sequential_1/dense_5/SoftmaxSoftmax״:Hba??!k?aOJ???"G
)gradient_tape/sequential_1/dense_3/MatMulMatMulN?3{z??! ? ?&??0"G
+gradient_tape/sequential_1/dense_4/MatMul_1MatMul??????!L??#???"G
+gradient_tape/sequential_1/dense_5/MatMul_1MatMul?X???!m2`????"9
sequential_1/dense_4/MatMulMatMul}D?????!??`?('??0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam V?s>???!??????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam???:??!?J?k?O??"G
)gradient_tape/sequential_1/dense_4/MatMulMatMul?;`,Z???!nN??^??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q??Z??K@yv!?	???"?
both?Your program is POTENTIALLY input-bound because 87.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?8.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?55.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 