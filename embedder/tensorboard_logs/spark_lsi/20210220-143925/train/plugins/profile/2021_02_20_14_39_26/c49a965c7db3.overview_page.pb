?	ĖM? 5@ĖM? 5@!ĖM? 5@	?S?]?s???S?]?s??!?S?]?s??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6ĖM? 5@?'LQ3@1P??n???A?I'L5??I???_?<??Y??~1[??*	?p=
?;h@2U
Iterator::Model::ParallelMapV2?)s?????!P_??m#?@)?)s?????1P_??m#?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?#K???!????{A@)jl??7??1z??Kq>@:Preprocessing2F
Iterator::Model?s??˶?!?/wZg?F@)$|?o?^??1???"-@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat????ȑ??!(??S?.@){.S????1k?M??=)@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???ʦ|?!?ڌ/]?@)???ʦ|?1?ڌ/]?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?z??{պ?!mЈ??K@)???B{?1??6?4@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor~9?]?v?!?J<ަ9@)~9?]?v?1?J<ަ9@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMape??]????!??"?L?A@)??1ZGUc?1E???z??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?S?]?s??I??vl??X@Q?w?x?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?'LQ3@?'LQ3@!?'LQ3@      ??!       "	P??n???P??n???!P??n???*      ??!       2	?I'L5???I'L5??!?I'L5??:	???_?<?????_?<??!???_?<??B      ??!       J	??~1[????~1[??!??~1[??R      ??!       Z	??~1[????~1[??!??~1[??b      ??!       JGPUY?S?]?s??b q??vl??X@y?w?x?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsI?Ζ???!I?Ζ???";
sequential_10/dense_30/MatMulMatMul ???¨?!?}?@?a??0";
sequential_10/dense_32/SoftmaxSoftmax?3}CVZ??!(Q5??G??";
sequential_10/dense_31/MatMulMatMul??h?q?!X????#??0"-
IteratorGetNext/_1_Send)?L+??!룀S+???"I
+gradient_tape/sequential_10/dense_30/MatMulMatMul@??????!?~]?e??0"I
+gradient_tape/sequential_10/dense_31/MatMulMatMul?@?)????!??????0"I
-gradient_tape/sequential_10/dense_32/MatMul_1MatMul??H?3???!@I??L??";
sequential_10/dense_32/MatMulMatMul?j0}ږ?!b?O?N???0"I
-gradient_tape/sequential_10/dense_31/MatMul_1MatMul^?/?B??!?bzp??Q      Y@Y[ZZZZZ6@ajiiiiiS@q?m?w? G@y?u a????"?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?46.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 