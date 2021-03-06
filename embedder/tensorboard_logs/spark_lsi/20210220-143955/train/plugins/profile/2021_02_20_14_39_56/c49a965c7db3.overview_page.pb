?	X?%??e@@X?%??e@@!X?%??e@@	?Vu?eY@?Vu?eY@!?Vu?eY@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6X?%??e@@?.?e??=@1????U??AN??????Iޑ??????Y?p̲'??*	V-?W@2U
Iterator::Model::ParallelMapV2??Ü???!?A?\(|>@)??Ü???1?A?\(|>@:Preprocessing2F
Iterator::Model?N??C??!}Ʀ?N@)؀q???1UKs???=@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?U?P?ג?!????c3@)y?JxB???17??QM0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?????x?!@?@)?????x?1@?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateԷ?鲈?!M????i)@)????߆x?1???M?<@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipz?c??T??!?9Y?"?C@)??#v?1N>>)?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?]???h?!1?e??@)?]???h?11?e??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapt}???!??Er?v-@)?J=By_?1??^>1 @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?Vu?eY@I????W@Q?O
w`?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?.?e??=@?.?e??=@!?.?e??=@      ??!       "	????U??????U??!????U??*      ??!       2	N??????N??????!N??????:	ޑ??????ޑ??????!ޑ??????B      ??!       J	?p̲'???p̲'??!?p̲'??R      ??!       Z	?p̲'???p̲'??!?p̲'??b      ??!       JGPUY?Vu?eY@b q????W@y?O
w`?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?kU?Om??!?kU?Om??";
sequential_13/dense_39/MatMulMatMul?????b??!?
?'???0";
sequential_13/dense_40/MatMulMatMul???SK??!????????0";
sequential_13/dense_41/SoftmaxSoftmaxM??*????!߾R??r??"I
+gradient_tape/sequential_13/dense_40/MatMulMatMul&?lXv???!D\`?X???0"I
+gradient_tape/sequential_13/dense_39/MatMulMatMul???O]??!?((5?h??0";
sequential_13/dense_41/MatMulMatMul$???????!?c?<q??0"I
-gradient_tape/sequential_13/dense_41/MatMul_1MatMul#GK|3??!.??tt??"I
-gradient_tape/sequential_13/dense_40/MatMul_1MatMul1???=???!(J??k??"I
+gradient_tape/sequential_13/dense_41/MatMulMatMul{?????!?Z	??C??0Q      Y@Y??(??(.@a?뺮?:U@q?\qC?;@yY?????"?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?27.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 