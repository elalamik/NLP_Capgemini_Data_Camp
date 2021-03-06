?	???=@???=@!???=@	??K?S?????K?S???!??K?S???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6???=@6X8I??6@1H?m??J??A??d?z???IȚ?A??@Y?R?h???*?C?l?kW@)      =2U
Iterator::Model::ParallelMapV2????!Z%WB?AA@)????1Z%WB?AA@:Preprocessing2F
Iterator::Model?$z?r??!6??^??L@)???0`ɕ?1???8??6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?p?-ޓ?!?????4@)Ւ?r0???1Fis?XO1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice%????{?!?U?j?@)%????{?1?U?j?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?I?U??!?7[ז])@)0?[w?t?1?]a???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???jׄ??!?]5?rcE@) |(ђ?s?1w?_?(?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapaq8??9??!d?cs??0@)GN??;p?1BF???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???mj?!V???}2@)???mj?1V???}2@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 77.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?19.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??K?S???I???cX@Q_???????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	6X8I??6@6X8I??6@!6X8I??6@      ??!       "	H?m??J??H?m??J??!H?m??J??*      ??!       2	??d?z?????d?z???!??d?z???:	Ț?A??@Ț?A??@!Ț?A??@B      ??!       J	?R?h????R?h???!?R?h???R      ??!       Z	?R?h????R?h???!?R?h???b      ??!       JGPUY??K?S???b q???cX@y_????????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits@<?-!??!@<?-!??"=
sequential_249/dense_747/MatMulMatMul?8???
??! 'J???0"=
 sequential_249/dense_749/SoftmaxSoftmax?8?????!???b???"=
sequential_249/dense_748/MatMulMatMul?\?????!q`?r
???0"K
-gradient_tape/sequential_249/dense_748/MatMulMatMul??Rݚ?!??@?ߏ??0"K
-gradient_tape/sequential_249/dense_747/MatMulMatMul??8???!?J?w???0"=
sequential_249/dense_749/MatMulMatMulf?g)aI??!??e?s???0"K
/gradient_tape/sequential_249/dense_748/MatMul_1MatMulJe???9??!???8 ??"K
/gradient_tape/sequential_249/dense_749/MatMul_1MatMulJe???9??!J?y??s??"K
-gradient_tape/sequential_249/dense_749/MatMulMatMuls:??????!?5??h???0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?????K@y*??5?A??"?
both?Your program is POTENTIALLY input-bound because 77.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?19.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?55.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 