?	y?t???E@y?t???E@!y?t???E@	???5?8?????5?8??!???5?8??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6y?t???E@G>?x?cD@1Y0?GQg??AU?2?F??I????V?@Y? ????*	??C?lV@2U
Iterator::Model::ParallelMapV2"??T2 ??!+
?S?F@)"??T2 ??1+
?S?F@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat͑?_??!e????4@)D0.s??1>?)?<?0@:Preprocessing2F
Iterator::ModelO?9?????!@ \???L@)??KqUه?1UX4??Q*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice5)?^?x?!Ge?~?d@)5)?^?x?1Ge?~?d@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate@7n1???!??s???)@)Ki??u?1?-$r??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipD??)X??!?ߣ.YE@)???#ӡs?1?~x?\?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorҧU??fn?!?(?YK?@)ҧU??fn?1?(?YK?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapl?u????!z?݅?H0@)???0i?1}MM??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???5?8??I}?a??uX@QN0????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	G>?x?cD@G>?x?cD@!G>?x?cD@      ??!       "	Y0?GQg??Y0?GQg??!Y0?GQg??*      ??!       2	U?2?F??U?2?F??!U?2?F??:	????V?@????V?@!????V?@B      ??!       J	? ????? ????!? ????R      ??!       Z	? ????? ????!? ????b      ??!       JGPUY???5?8??b q}?a??uX@yN0?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??Q????!??Q????"-
IteratorGetNext/_1_Send??$?U??!֚M????"=
sequential_191/dense_573/MatMulMatMul?_Nж??!?2a?-??0"K
-gradient_tape/sequential_191/dense_573/MatMulMatMul??dH??!U1a???0"=
 sequential_191/dense_575/SoftmaxSoftmax?Cր?i??!???X?>??"=
sequential_191/dense_574/MatMulMatMul?{?'}???!?I+By??0"K
-gradient_tape/sequential_191/dense_574/MatMulMatMul?7l???!#ȿ?3???0"K
/gradient_tape/sequential_191/dense_574/MatMul_1MatMul??-@$u??!ޣ?????"K
/gradient_tape/sequential_191/dense_575/MatMul_1MatMul?z?9???!?^ボ??"=
sequential_191/dense_575/MatMulMatMul?Z?5?}??!b]q???0Q      Y@Y??(??(.@a?뺮?:U@q挵??G@y?AD2???"?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?47.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 