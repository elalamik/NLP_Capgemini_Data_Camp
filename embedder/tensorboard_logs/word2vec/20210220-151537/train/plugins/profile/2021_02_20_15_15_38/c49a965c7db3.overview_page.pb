?	???l???@???l???@!???l???@	?,z?^b???,z?^b??!?,z?^b??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6???l???@j??U??=@1,F]k?S??A?#??????IFB[Υ???Y?m5?????*	?|?5^?p@2U
Iterator::Model::ParallelMapV2\??.?u??!/?Mm&?C@)\??.?u??1/?Mm&?C@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??ӹ????!??2\ȶA@)ۤ???w??1Zh?%1@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?B???Π?!w?0 ?9(@)Zh?4???1s,2??#@:Preprocessing2F
Iterator::Model??Q????!?vr?<(H@)H???=??1H咼Xx!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceL7?A`???!R?rA(Z@)L7?A`???1R?rA(Z@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipYni5$???!??c??I@)???$????1'o?="@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor>u?Rz?w?!???'@)>u?Rz?w?1???'@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???s]??!o??5GB@)????i?1?{ì???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?,z?^b??I???d\X@Q<??Ra???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	j??U??=@j??U??=@!j??U??=@      ??!       "	,F]k?S??,F]k?S??!,F]k?S??*      ??!       2	?#???????#??????!?#??????:	FB[Υ???FB[Υ???!FB[Υ???B      ??!       J	?m5??????m5?????!?m5?????R      ??!       Z	?m5??????m5?????!?m5?????b      ??!       JGPUY?,z?^b??b q???d\X@y<??Ra????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?E?Gf??!?E?Gf??"=
 sequential_144/dense_434/SoftmaxSoftmaxM???	ʝ?!,?????"=
sequential_144/dense_432/MatMulMatMulob?o??!???k???0"K
-gradient_tape/sequential_144/dense_432/MatMulMatMul[?E?l??!Dy??:??0"K
/gradient_tape/sequential_144/dense_434/MatMul_1MatMul?|S?*???!?pya??"K
/gradient_tape/sequential_144/dense_433/MatMul_1MatMul?k?}??!??1?????"=
sequential_144/dense_433/MatMulMatMul?ZՎ?k??!M=???0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam??}ʭ??!?????J??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam???+$??!<?S??l??"b
?sequential_144/dropout_144/dropout/random_uniform/RandomUniformRandomUniformu?#??!??Dx?~??Q      Y@Y[ZZZZZ6@ajiiiiiS@q???K?B@y$?%?O???"?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?37.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 