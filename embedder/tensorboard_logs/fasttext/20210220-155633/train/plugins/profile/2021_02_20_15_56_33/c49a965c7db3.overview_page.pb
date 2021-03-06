?	
?2??@@
?2??@@!
?2??@@	f.%???@f.%???@!f.%???@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6
?2??@@&U?M??@18?n??A??M~?N??I????????Y\;Qi??*	?ʡE??T@2U
Iterator::Model::ParallelMapV2&TpxAD??!l?d[?>@)&TpxAD??1l?d[?>@:Preprocessing2F
Iterator::Model??iܛ??!뉧
??K@)0?[w???1l???i8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???}??!w??5@)-z??y??1??>??1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???v?>??!??x?@,@)??c"?y?1✁V??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceB?????v?!?p24?@)B?????v?1?p24?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip3?PlM??!vX?v}F@)?*?)?t?1?hV??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??QF\ j?!?3?*>L@)??QF\ j?1?3?*>L@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap2 {?????!?]??0j1@)???ٕf?14??Z:Q
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9f.%???@I?Ũ???W@Q0<?3?g??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	&U?M??@&U?M??@!&U?M??@      ??!       "	8?n??8?n??!8?n??*      ??!       2	??M~?N????M~?N??!??M~?N??:	????????????????!????????B      ??!       J	\;Qi??\;Qi??!\;Qi??R      ??!       Z	\;Qi??\;Qi??!\;Qi??b      ??!       JGPUYf.%???@b q?Ũ???W@y0<?3?g???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits\?m?m~??!\?m?m~??"=
sequential_267/dense_801/MatMulMatMulK)1?D??!W}?????0"=
 sequential_267/dense_803/SoftmaxSoftmax?]?ꊝ?!?2?g???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam%h?S?e??!?9n??&??"K
-gradient_tape/sequential_267/dense_801/MatMulMatMulm?_硾??!B6?֩???0"K
/gradient_tape/sequential_267/dense_803/MatMul_1MatMul???#;???!?4#????"K
/gradient_tape/sequential_267/dense_802/MatMul_1MatMul???Ŕ?!??ai|.??"=
sequential_267/dense_802/MatMulMatMulK? ?U??!??#?1P??0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam????????!????k??"K
-gradient_tape/sequential_267/dense_803/MatMulMatMulÚ#??C??!oVc?p??0Q      Y@Y[ZZZZZ6@ajiiiiiS@qU?T??4@y?X??????"?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?20.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 