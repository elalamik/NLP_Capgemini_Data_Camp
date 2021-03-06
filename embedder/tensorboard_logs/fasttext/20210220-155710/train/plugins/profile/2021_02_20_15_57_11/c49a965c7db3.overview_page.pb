?	Y??ѯC@Y??ѯC@!Y??ѯC@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-Y??ѯC@@1?d??A@1mo?$???A?8d?b??Iմ?i??@*	R???yX@2U
Iterator::Model::ParallelMapV2$?`S?Q??!???e?FA@)$?`S?Q??1???e?FA@:Preprocessing2F
Iterator::Model??M?«?!?C?檰K@)?nf?????1MC?4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??^???!?5u?4@)???Co??1? f~?c1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate1Xr???!???2?v/@)H1@?	??1????!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceе/??|?!????F?@)е/??|?1????F?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipʦ\?]??!K?UOF@)??f?v?t?1??6z@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?)??F?k?!23ĵE?@)?)??F?k?123ĵE?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?@?ش??!jeﭨ2@)???pzg?1⯯*k@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?????X@Q??V???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	@1?d??A@@1?d??A@!@1?d??A@      ??!       "	mo?$???mo?$???!mo?$???*      ??!       2	?8d?b???8d?b??!?8d?b??:	մ?i??@մ?i??@!մ?i??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?????X@y??V????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???ž??!???ž??"=
 sequential_268/dense_806/SoftmaxSoftmaxb+?:jߖ?!*]?]????"=
sequential_268/dense_804/MatMulMatMul????'??!;1S????0"K
/gradient_tape/sequential_268/dense_806/MatMul_1MatMul?+G?%??!0?d?a???"K
-gradient_tape/sequential_268/dense_804/MatMulMatMul?'?A???!?'?Ů??0"K
/gradient_tape/sequential_268/dense_805/MatMul_1MatMul????M??!??????"=
sequential_268/dense_805/MatMulMatMul?v?{??!>k?6???0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam-?? ٳ??!w2???u??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam/??.m???!??eP?:??"K
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdamP 	?]???!?&?????Q      Y@Y??(??(.@a?뺮?:U@qZ??yT@y??z?/??"?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?80.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 