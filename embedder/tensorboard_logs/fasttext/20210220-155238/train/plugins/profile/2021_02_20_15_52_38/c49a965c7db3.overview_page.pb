?	?p?Ws?B@?p?Ws?B@!?p?Ws?B@	[?Y????[?Y????![?Y????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?p?Ws?B@? ?bGWA@1??;?_???A?4?BX???I??Pj/???Ykf-????*	X9??n\@2U
Iterator::Model::ParallelMapV2?i????!????9;@)?i????1????9;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?i????!????9;@)?8毐??1????5@:Preprocessing2F
Iterator::Model???zݪ?!4PXjG@)PP?V???1X/ݸ?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???|	??!nS?M2@)M??y ???1?=?:?(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??x]??!?믧??J@)??3?{?1?????@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?t??{?!????<@)?t??{?1????<@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor<hv?[?x?!???k@)<hv?[?x?1???k@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??V_]??!?2????4@)tF??_h?1??v?3?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9Z?Y????I?)?dX@QR???l @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	? ?bGWA@? ?bGWA@!? ?bGWA@      ??!       "	??;?_?????;?_???!??;?_???*      ??!       2	?4?BX????4?BX???!?4?BX???:	??Pj/?????Pj/???!??Pj/???B      ??!       J	kf-????kf-????!kf-????R      ??!       Z	kf-????kf-????!kf-????b      ??!       JGPUYZ?Y????b q?)?dX@yR???l @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???em???!???em???"=
sequential_254/dense_762/MatMulMatMulnED9h??!TS??{??0"=
 sequential_254/dense_764/SoftmaxSoftmax]5&?ϕ?!???[v???"=
sequential_254/dense_763/MatMulMatMul}?????!f0b?)T??0"-
IteratorGetNext/_1_Send??H??/??!?I+4???"K
-gradient_tape/sequential_254/dense_763/MatMulMatMul?tP???!O?b?3???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?$?5?X??!?W??????"K
-gradient_tape/sequential_254/dense_762/MatMulMatMulT???zC??!^g????0"=
sequential_254/dense_764/MatMulMatMulT???zC??!#wS)0???0"K
/gradient_tape/sequential_254/dense_763/MatMul_1MatMul???Pm??!
?ڛ????Q      Y@Y??(??(.@a?뺮?:U@q~? ?K@yB???O???"?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?56.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 