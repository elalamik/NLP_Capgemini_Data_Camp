?	ѯ?? A@ѯ?? A@!ѯ?? A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-ѯ?? A@? Ϡ??@1? ????A?(?7ӥ?IX???T???*	T㥛?t`@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?5?;Nѡ?!v/??o:@)???i2???1?Sݙ+6@:Preprocessing2U
Iterator::Model::ParallelMapV2??3?c???!I???5@)??3?c???1I???5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?o|??%??!m@??Xp9@)R???T??1kp,?1Y3@:Preprocessing2F
Iterator::Model??"???!?sM?D@)d??????1?eL?492@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceR<??k??!
@???\@)R<??k??1
@???\@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip&??)??!?H???M@)?V?I??10?l?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?N?6??v?!?nC??@)?N?6??v?1?nC??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?+-#????!X???/?;@)Q?[??g?1M?ܰ?~@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIy?TB¡X@Q?!?jo???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	? Ϡ??@? Ϡ??@!? Ϡ??@      ??!       "	? ????? ????!? ????*      ??!       2	?(?7ӥ??(?7ӥ?!?(?7ӥ?:	X???T???X???T???!X???T???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qy?TB¡X@y?!?jo????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsM???]??!M???]??"=
sequential_169/dense_507/MatMulMatMul??$!~H??!b K????0"=
 sequential_169/dense_509/SoftmaxSoftmaxXT?<???!\??ѣ??"K
-gradient_tape/sequential_169/dense_507/MatMulMatMul?%֮M???!?9????0"K
/gradient_tape/sequential_169/dense_508/MatMul_1MatMul?N???!???v??"K
/gradient_tape/sequential_169/dense_509/MatMul_1MatMul?????m??!D??????"=
sequential_169/dense_508/MatMulMatMula?@K&ה?!J??HP??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam????FS??!$_,??/??"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam2???5???!?UX;??"K
-gradient_tape/sequential_169/dense_508/MatMulMatMul2???5???!?p+G??0Q      Y@Y[ZZZZZ6@ajiiiiiS@qh:(??P@y????9F??"?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 