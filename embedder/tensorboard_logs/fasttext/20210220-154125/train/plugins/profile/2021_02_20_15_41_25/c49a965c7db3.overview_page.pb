?	?lXSY??@?lXSY??@!?lXSY??@	?c??=???c??=??!?c??=??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?lXSY??@kE???
=@1	??g????A?$xC??IIc???f??Y?Kǜg???*	???SZ@2U
Iterator::Model::ParallelMapV2???Z??!x:O?.A@)???Z??1x:O?.A@:Preprocessing2F
Iterator::Model??ͪ?ծ?!1g5???L@)ܼqR????1B??oX`7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatDkE??ܖ?!?_{??g5@)???o??1??2\nB1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceH??5\?~?!?$q?w?@)H??5\?~?1?$q?w?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?Oqx???!C L?/?*@)U?W??z?1?''??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip+??B???!И?x'!E@)?:??Kt?1OM?? @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensore?X?q?!@#?!?@)e?X?q?1@#?!?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???^?2??!??F/0@)??ʅʿf?1??Q?L@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?c??=??I3?7X@Q?D'??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	kE???
=@kE???
=@!kE???
=@      ??!       "		??g????	??g????!	??g????*      ??!       2	?$xC???$xC??!?$xC??:	Ic???f??Ic???f??!Ic???f??B      ??!       J	?Kǜg????Kǜg???!?Kǜg???R      ??!       Z	?Kǜg????Kǜg???!?Kǜg???b      ??!       JGPUY?c??=??b q3?7X@y?D'??@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsu(??7??!u(??7??"=
sequential_221/dense_663/MatMulMatMulhuLMx???!"?+????0"=
 sequential_221/dense_665/SoftmaxSoftmax???e0???!???????"K
/gradient_tape/sequential_221/dense_664/MatMul_1MatMulȻsx????!?-"???"K
-gradient_tape/sequential_221/dense_663/MatMulMatMul?栺?4??!???k???0"=
sequential_221/dense_664/MatMulMatMul?/?`??!V??l???0"K
/gradient_tape/sequential_221/dense_665/MatMul_1MatMul??g?H??!??E????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamw?M?????!?{??|??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam6?~?'???!?s?P?9??"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam??_l????!?q$????Q      Y@Y??(??(.@a?뺮?:U@q1ǚ?,J@y?aj@dM??"?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?52.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 