?	??fd?#9@??fd?#9@!??fd?#9@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??fd?#9@B!??6@1t?5=((??A???????I?7iM??*	㥛? pZ@2U
Iterator::Model::ParallelMapV2?=~oӟ?!??B?c=@)?=~oӟ?1??B?c=@:Preprocessing2F
Iterator::ModelP ?Ȓ9??!?;?:?K@)??L????1g٢??n:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatcAaP?є?!@R???93@)O ????1.?W?q/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?h??????!?u?ZC? @)?h??????1?u?ZC? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipF"4?????!?
??F@)O??D???1??5?X@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?k???D??!
n?[3.@)???8}?1?????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????Wn?!@1??0@)????Wn?1@1??0@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??"???!wPwEߝ1@)͓k
dvf?1??P?,?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIC????wX@Q?w???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B!??6@B!??6@!B!??6@      ??!       "	t?5=((??t?5=((??!t?5=((??*      ??!       2	??????????????!???????:	?7iM???7iM??!?7iM??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qC????wX@y?w???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?????r??!?????r??"=
 sequential_232/dense_698/SoftmaxSoftmax3Ϸ??!e?*????"=
sequential_232/dense_696/MatMulMatMul??Q????!????d???0"=
sequential_232/dense_697/MatMulMatMulם??1??!o	?Gv???0"-
IteratorGetNext/_2_Recv??6N????!?w?oP??"K
-gradient_tape/sequential_232/dense_696/MatMulMatMul??(??ߘ?!i?{m???0"K
-gradient_tape/sequential_232/dense_697/MatMulMatMul]?s7???!?C;??_??0"K
/gradient_tape/sequential_232/dense_698/MatMul_1MatMul??I ????!???????"K
/gradient_tape/sequential_232/dense_697/MatMul_1MatMul???3???!??݁V??"=
sequential_232/dense_698/MatMulMatMul?a??x??!/G?????0Q      Y@Y[ZZZZZ6@ajiiiiiS@qK??G??P@y???(F???"?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 