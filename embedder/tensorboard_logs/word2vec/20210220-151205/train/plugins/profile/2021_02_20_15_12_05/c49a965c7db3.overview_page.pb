?	#??@@#??@@!#??@@	?U??????U?????!?U?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6#??@@?%9`Wk=@1? ?K(??A?*??٧?I?×?"???Yvi????*	sh??|GY@2U
Iterator::Model::ParallelMapV2]????ۡ?!e?D$R?A@)]????ۡ?1e?D$R?A@:Preprocessing2F
Iterator::Model??W;?s??!?cBzK@);?I/??1b	~}?u4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat.?5#?ܕ?!E>\q?5@)<i??
???1??? 1@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???DR??!?????F@)????/?~?1?8; ??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?U??6o??!?<??v+@)!Y?n}?1I?L*l@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???ip{?!<c
??@)???ip{?1<c
??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorȗP??q?!0re??p@)ȗP??q?10re??p@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapC?8
??!Y????t0@)-??;??f?1?Ǻ??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?U?????I?E?GCX@QP	?#x?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?%9`Wk=@?%9`Wk=@!?%9`Wk=@      ??!       "	? ?K(??? ?K(??!? ?K(??*      ??!       2	?*??٧??*??٧?!?*??٧?:	?×?"????×?"???!?×?"???B      ??!       J	vi????vi????!vi????R      ??!       Z	vi????vi????!vi????b      ??!       JGPUY?U?????b q?E?GCX@yP	?#x?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits1??/??!1??/??"=
sequential_127/dense_381/MatMulMatMulS?)DT??!;l0????0"=
 sequential_127/dense_383/SoftmaxSoftmax?B? 6??!????ˠ??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdaman?񙥑?!\\??~???"K
/gradient_tape/sequential_127/dense_382/MatMul_1MatMul?OZC?ŏ?!U'?????"K
-gradient_tape/sequential_127/dense_381/MatMulMatMul?Q?????!8{???V??0"=
sequential_127/dense_382/MatMulMatMul?;???'??!u?j????0"K
/gradient_tape/sequential_127/dense_383/MatMul_1MatMul1?????!????&??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam%3Ԉϊ?!9?X/O???"`
Cgradient_tape/sequential_127/batch_normalization_63/moments/truedivRealDiv?X????!?W?<,???Q      Y@Y??(??(.@a?뺮?:U@q?E?~?O@y??	`ܾ??"?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?62.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 