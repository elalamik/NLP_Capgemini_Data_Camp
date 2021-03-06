?	?v?>X?=@?v?>X?=@!?v?>X?=@	J3??s??J3??s??!J3??s??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?v?>X?=@0*???:@1d??N??A'1?Z??I!!?????Y??@?m߻?*	@5^?I?U@2U
Iterator::Model::ParallelMapV2鹅?D???!R???F?=@)鹅?D???1R???F?=@:Preprocessing2F
Iterator::Model??o?DI??!n??l=K@)?Y,E???1?=9??8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat>???6??!???=`?6@)?????1?????$1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??b?=??!?~xq?O,@)Pqx??y?1!3i??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?????x?!Lʇ[??@)?????x?1Lʇ[??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??Iطs?!,,??@)??Iطs?1,,??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?J???J??!??
/??F@)?????r?1?s?(h?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap&4I,)w??!6?Il?1@)????>?h?1?6j?^?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9J3??s??I?H;?{7X@Q??5"@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	0*???:@0*???:@!0*???:@      ??!       "	d??N??d??N??!d??N??*      ??!       2	'1?Z??'1?Z??!'1?Z??:	!!?????!!?????!!!?????B      ??!       J	??@?m߻???@?m߻?!??@?m߻?R      ??!       Z	??@?m߻???@?m߻?!??@?m߻?b      ??!       JGPUYJ3??s??b q?H;?{7X@y??5"@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits(??????!(??????"-
IteratorGetNext/_1_Send?_?`R???!@?)O??";
sequential_23/dense_69/MatMulMatMul?U????!????=??0"I
+gradient_tape/sequential_23/dense_69/MatMulMatMul?֨Z???!]?T
I???0";
sequential_23/dense_71/SoftmaxSoftmaxHÌs#???!?c??1??";
sequential_23/dense_70/MatMulMatMul쩣????!????\??0"I
-gradient_tape/sequential_23/dense_70/MatMul_1MatMulJ?
?-??!?+L??n??"I
+gradient_tape/sequential_23/dense_70/MatMulMatMul?a&w5Ȑ?!ӑ?Nq{??0";
sequential_23/dense_71/MatMulMatMul???O??!??]΋s??0"a
Hgradient_tape/sequential_23/batch_normalization_11/batchnorm/add_1/Sum_1Sum???????!??3i??Q      Y@Y??(??(.@a?뺮?:U@q???k}E@y4??9????"?
both?Your program is POTENTIALLY input-bound because 90.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?43.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 