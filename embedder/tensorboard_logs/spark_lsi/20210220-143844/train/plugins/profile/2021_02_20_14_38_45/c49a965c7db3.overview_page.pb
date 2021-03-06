?	-???=@-???=@!-???=@	}	? ???}	? ???!}	? ???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6-???=@?v???:@1K ?)???Ata?????I?F?@??YT?qs*??*	$??C[Z@2U
Iterator::Model::ParallelMapV2GUD???!m)~?Բ=@)GUD???1m)~?Բ=@:Preprocessing2F
Iterator::Model?[??Y??!?>s20K@)?d?P3???1?Sh???8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat*ʥ????!?ϔ?(3@)?o??e1??1?ܯ?
?/@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????n???!m?????F@)-??VЄ?1?"ӥG#@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate*t^c????!?{H;)f,@)??ӹ????1?~????@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?PS?'|?!?x?Ʋ@)?PS?'|?1?x?Ʋ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?b?0?k?! ?AN?	@)?b?0?k?1 ?AN?	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?s???)??!?Q????0@)S?A?Ѫf?1?x?(?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9}	? ???I??`??=X@Q?'?F?X@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?v???:@?v???:@!?v???:@      ??!       "	K ?)???K ?)???!K ?)???*      ??!       2	ta?????ta?????!ta?????:	?F?@???F?@??!?F?@??B      ??!       J	T?qs*??T?qs*??!T?qs*??R      ??!       Z	T?qs*??T?qs*??!T?qs*??b      ??!       JGPUY}	? ???b q??`??=X@y?'?F?X@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????????!????????":
sequential_7/dense_21/MatMulMatMul??'????!O??9?*??0":
sequential_7/dense_23/SoftmaxSoftmax??D~??!??N?????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam????\Y??!?.?@????"H
*gradient_tape/sequential_7/dense_21/MatMulMatMul*?΂???!?ψ????0"H
,gradient_tape/sequential_7/dense_22/MatMul_1MatMulJ?\?땎?!v:"e??"H
,gradient_tape/sequential_7/dense_23/MatMul_1MatMulXW???d??!???)P??":
sequential_7/dense_22/MatMulMatMul??>???! %??9??0":
sequential_7/dense_23/MatMulMatMul???o隇?!?y
4????0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam??	f???!3?Vd???Q      Y@Y??(??(.@a?뺮?:U@q?A'>R\Q@y??%D????"?
both?Your program is POTENTIALLY input-bound because 90.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?69.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 