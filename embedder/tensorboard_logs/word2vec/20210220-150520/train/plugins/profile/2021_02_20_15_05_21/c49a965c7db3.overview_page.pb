?	?vhX?@@?vhX?@@!?vhX?@@	?
T?????
T????!?
T????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?vhX?@@B]¡?=@1sK?!q???A?p=
ף??II*S?A??Y*?:]???*	??/??W@2U
Iterator::Model::ParallelMapV2?
E??S??!?~0?@@)?
E??S??1?~0?@@:Preprocessing2F
Iterator::Modelu?BY???!??X?ܗK@)xԘsI??1i??Y?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatXr????!??hy?6@)-??m??1?@}???2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateNd??Ǌ?!?ɊT?e+@)o??ܚt{?1?v?y?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice,=)?z?!?+/??@),=)?z?1?+/??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?<,Ԛ???!t?	#hF@)Ϡ???u?1EW???
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorW!?'?>m?!?,???@)W!?'?>m?1?,???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??Z}uU??!?~???0@)Zd;?O?g?1?̰-?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?
T????I?*???cX@Q?_eŪ?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B]¡?=@B]¡?=@!B]¡?=@      ??!       "	sK?!q???sK?!q???!sK?!q???*      ??!       2	?p=
ף???p=
ף??!?p=
ף??:	I*S?A??I*S?A??!I*S?A??B      ??!       J	*?:]???*?:]???!*?:]???R      ??!       Z	*?:]???*?:]???!*?:]???b      ??!       JGPUY?
T????b q?*???cX@y?_eŪ?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?Ra????!?Ra????"=
sequential_101/dense_303/MatMulMatMuljL?G???!dN?ݝ??0"=
 sequential_101/dense_305/SoftmaxSoftmax?O?)=m??!?O?K??"K
-gradient_tape/sequential_101/dense_303/MatMulMatMulF??GӐ?!Ti?L?e??0"K
/gradient_tape/sequential_101/dense_304/MatMul_1MatMulͺ?֥܎?!?S??"K
/gradient_tape/sequential_101/dense_305/MatMul_1MatMul???֍?!i?]???"=
sequential_101/dense_304/MatMulMatMulN?????!SJ???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam???g'l??!g?A????"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam/??L?r??!??k????"K
-gradient_tape/sequential_101/dense_304/MatMulMatMul????̇?!???c??0Q      Y@Y??(??(.@a?뺮?:U@qe??H?@R@y ?R?f@??"?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?73.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 