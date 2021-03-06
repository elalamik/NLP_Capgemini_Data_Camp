?	??????6@??????6@!??????6@	?U{? n???U{? n??!?U{? n??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??????6@eq????4@1${??!???A???K???I衶???Y??߆???*	???S?V@2U
Iterator::Model::ParallelMapV2l?,	PS??!@?B?J>@)l?,	PS??1@?B?J>@:Preprocessing2F
Iterator::Model~??k	???!k?"?K@)?IF???1?1vx9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat$^?????!?F???6@)(??&2s??1??Z4X3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice|~!<z?!#F?N@)|~!<z?1#F?N@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate!???ƈ?!??Z:|w+@)<??Qw?1??nѩ?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??Z?[!??!???#?PF@)I?s
??q?1R?????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?'?>?i?!??e??U@)?'?>?i?1??e??U@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?n??Ia??!?V????0@)[???if?1?????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?U{? n??I?ví?EX@Q??)*?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	eq????4@eq????4@!eq????4@      ??!       "	${??!???${??!???!${??!???*      ??!       2	???K??????K???!???K???:	衶???衶???!衶???B      ??!       J	??߆?????߆???!??߆???R      ??!       Z	??߆?????߆???!??߆???b      ??!       JGPUY?U{? n??b q?ví?EX@y??)*?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits2??v\???!2??v\???";
sequential_11/dense_33/MatMulMatMul??F??f??! ^??z??0"-
IteratorGetNext/_1_Send?~??zI??!쯙??";
sequential_11/dense_35/SoftmaxSoftmax?㊔ӱ??!+^?'?^??";
sequential_11/dense_34/MatMulMatMul?R?7}??!YsZ????0"I
+gradient_tape/sequential_11/dense_33/MatMulMatMulV??RЙ?!?;?????0";
sequential_11/dense_35/MatMulMatMul?"??O???!-NT?8??0"I
+gradient_tape/sequential_11/dense_34/MatMulMatMul?}?ܞ???!?????0"I
-gradient_tape/sequential_11/dense_34/MatMul_1MatMul?r?F?*??!7}?xO
??"I
-gradient_tape/sequential_11/dense_35/MatMul_1MatMul??|v??!?}?@?Q??Q      Y@Y[ZZZZZ6@ajiiiiiS@quv???I@yj`8*J???"?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?51.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 